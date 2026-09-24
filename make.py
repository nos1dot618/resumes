import argparse
import csv
import subprocess
import sys
from pathlib import Path
from typing import Any

LABEL_GITHUB = "github"
LABEL_GITLAB = "gitlab"

PROJECT_SUPPLIER = LABEL_GITHUB
GITHUB_USERNAME = "nos1dot618"
GITHUB_API_URL = f"https://api.github.com/users/{GITHUB_USERNAME}/repos"
GITLAB_USERNAME = "ninthcircle"
GITLAB_API_URL = f"https://gitlab.com/api/v4/users/{GITLAB_USERNAME}/projects"

OUTPUT_DIR = Path("dist")
RESUMES_DIR = Path("resumes")
VENV_DIR = Path("venv")


def log(level: str, message: str, color: str | None = None):
    try:
        from termcolor import colored

        print(f"{colored(level, color)}: {message}")
    except ImportError:
        print(f"{level}: {message}")


def error(message: str, exit: bool = False):
    log("error", message, color="red")
    if exit:
        sys.exit(1)


def info(message: str):
    log("info", message, color="blue")


def python():
    venv_dir = Path(VENV_DIR)
    if sys.platform == "win32":
        return str(venv_dir / "Scripts" / "python.exe")
    else:
        return str(venv_dir / "bin" / "python")


def subcommand_build():
    # Rerun the build using the virtual environment's Python.
    if Path(sys.executable).resolve() != Path(python()).resolve():
        subprocess.run([python(), __file__, "build"], check=True)
        return

    OUTPUT_DIR.mkdir(exist_ok=True)

    for file in RESUMES_DIR.rglob("*resume-*.typ"):
        rel_parent = file.parent.relative_to(RESUMES_DIR)
        out_dir = OUTPUT_DIR / rel_parent
        out_dir.mkdir(parents=True, exist_ok=True)
        out_pdf = str(out_dir / f"{file.stem}.pdf")
        out_png = str(out_dir / f"{file.stem}.png")

        subprocess.run(
            ["typst", "compile", "--root", ".", str(file), out_pdf],
            check=True,
        )

        info(f"Generated '{out_pdf}'.")

        import pymupdf

        pdf_document = pymupdf.open(out_pdf)
        page = pdf_document[0]  # pyright: ignore[reportUnknownVariableType]
        pix = page.get_pixmap(dpi=300)  # pyright: ignore[reportUnknownMemberType]
        pix.save(out_png)  # pyright: ignore[reportUnknownMemberType]

        info(f"Generated '{out_png}'.")


def subcommand_setup():
    try:
        subprocess.run(
            ["git", "config", "--unset-all", "core.hooksPath"],
            check=True,
        )
    except subprocess.CalledProcessError as e:
        error(e.stderr.strip() or str(e))
    except Exception as e:  # noqa: BLE001
        error(str(e))
    subprocess.run(
        ["pre-commit", "install"],
        check=True,
    )
    info("Configured Git hooks.")

    subprocess.run(
        [sys.executable, "-m", "venv", str(VENV_DIR)],
        check=True,
    )
    info("Created virtual environment.")

    subprocess.run(
        [python(), "-m", "pip", "install", "--upgrade", "pip"],
        check=True,
    )
    subprocess.run(
        [python(), "-m", "pip", "install", "-r", "requirements.txt"],
        check=True,
    )
    info("Installed development dependencies.")


def subcommand_generate_gitlab_projects_csv():
    import requests

    out = "dist/gitlab_repos.csv"
    params: dict[str, Any] = {"visibility": "public", "per_page": 200}

    repos = requests.get(GITLAB_API_URL, params=params).json()

    with open(out, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=["name", "description", "topics", "url"])
        writer.writeheader()
        repos = [repo for repo in repos if not repo.get("fork", False)]
        for repo in repos:
            writer.writerow(
                {
                    "name": repo["name"],
                    "description": repo["description"],
                    "topics": ",".join(repo.get("topics", [])),
                    "url": repo["web_url"],
                }
            )

    print(f"Generated '{out}'.")


def subcommand_generate_github_projects_csv():
    import requests

    OUTPUT_DIR.mkdir(exist_ok=True)
    out = OUTPUT_DIR / "github_repos.csv"

    repos = []
    page = 1

    while True:
        response = requests.get(
            GITHUB_API_URL,
            params={
                "type": "owner",
                "visibility": "public",
                "per_page": 100,
                "page": page,
            },
            headers={
                "Accept": "application/vnd.github+json",
            },
            timeout=30,
        )
        response.raise_for_status()

        page_repos = response.json()
        if not page_repos:
            break

        print(page_repos[0])
        repos.extend(repo for repo in page_repos if not repo.get("fork", False))  # pyright: ignore[reportUnknownMemberType]
        page += 1

    with out.open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["name", "description", "topics", "url"],
        )
        writer.writeheader()

        for repo in repos:  # pyright: ignore[reportUnknownVariableType]
            writer.writerow(
                {
                    "name": repo["name"],
                    "description": repo["description"] or "",
                    "topics": ",".join(repo.get("topics", [])),  # type: ignore
                    "url": repo["html_url"],
                }
            )

    info(f"Generated '{out}'.")


def subcommand_generate_projects_csv():
    if PROJECT_SUPPLIER == LABEL_GITHUB:
        subcommand_generate_github_projects_csv()
    elif PROJECT_SUPPLIER == LABEL_GITLAB:
        subcommand_generate_gitlab_projects_csv()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(prog="make.py", description="Resume build tool")

    subparsers = parser.add_subparsers(dest="command", required=True)
    subparsers.add_parser("setup", help="Configure Git hooks and installs dependencies")
    subparsers.add_parser(
        "build", help="Build all the resumes present inside the resumes/ directory"
    )
    subparsers.add_parser(
        "projects",
        help="Generate CSV file of my projects fetched through GitHub/GitLab API",
    )

    args = parser.parse_args()
    match args.command:  # pyright: ignore[reportMatchNotExhaustive]
        case "setup":
            subcommand_setup()
        case "build":
            subcommand_build()
        case "projects":
            subcommand_generate_projects_csv()
