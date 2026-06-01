import argparse
import csv
from pathlib import Path
import subprocess
import sys

URL = "https://gitlab.com/api/v4/users/ninthcircle/projects"
OUTPUT_DIR = Path("dist")
RESUMES_DIR = Path("resumes")
VENV_DIR = Path("venv")


def log(level, message):
    print(f"[{level}] {message}")


def error(message, exit=False):
    log("ERROR", message)
    if exit:
        sys.exit(1)


def info(message):
    log("INFO", message)


def python():
    venv_dir = Path(VENV_DIR)
    if sys.platform == "win32":
        return str(venv_dir / "Scripts" / "python.exe")
    else:
        return str(venv_dir / "bin" / "python")


def subcommand_build():
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

        import fitz
        pdf_document = fitz.open(out_pdf)
        page = pdf_document[0]
        pix = page.get_pixmap(dpi=300)
        pix.save(out_png)

        info(f"Generated '{out_png}'.")


def subcommand_setup():
    subprocess.run(
        ["git", "config", "core.hooksPath", ".githooks"],
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


def subcommand_generate_projects_csv():
    import requests
    out = "dist/gitlab_repos.csv"
    params = {"visibility": "public", "per_page": 200}

    repos = requests.get(URL, params=params).json()

    with open(out, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=["name", "description", "topics", "url"])
        writer.writeheader()
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


if __name__ == "__main__":
    parser = argparse.ArgumentParser(prog="make.py", description="Resume build tool")

    subparsers = parser.add_subparsers(dest="command", required=True)
    subparsers.add_parser("setup", help="Configure Git hooks and installs dependencies")
    subparsers.add_parser(
        "build", help="Build all the resumes present inside the resumes/ directory"
    )
    subparsers.add_parser(
        "projects", help="Generate CSV file of my projects fetched through GitLab API"
    )

    args = parser.parse_args()
    match args.command:
        case "setup":
            subcommand_setup()
        case "build":
            subcommand_build()
        case "gen_projects_csv":
            subcommand_generate_projects_csv()
