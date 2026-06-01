import csv
import subprocess
import sys
from pathlib import Path

import requests

URL = "https://gitlab.com/api/v4/users/ninthcircle/projects"
OUTPUT_DIR = "dist"


def log(level, message):
    print(f"[{level}] {message}")


def error(message, exit=False):
    log("ERROR", message)
    if exit:
        sys.exit(1)


def info(message):
    log("INFO", message)


def subcommand_build():
    resumes_dir = Path("resumes")
    dist_dir = Path(OUTPUT_DIR)
    dist_dir.mkdir(exist_ok=True)

    for file in resumes_dir.rglob("*resume-*.typ"):
        rel_parent = file.parent.relative_to(resumes_dir)
        out_dir = dist_dir / rel_parent
        out_dir.mkdir(parents=True, exist_ok=True)
        out = out_dir / f"{file.stem}.pdf"

        subprocess.run(
            ["typst", "compile", "--root", ".", str(file), str(out)], check=True
        )
        info(f"Generated '{out}'.")


def subcommand_setup():
    subprocess.run(["git", "config", "core.hooksPath", ".githooks"], check=True)
    info("Git hooks configured.")


def subcommand_generate_projects_csv():
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
    if len(sys.argv) < 2:
        error("Expected subcommand: build, setup, projects", exit=True)

    match sys.argv[1]:
        case "setup":
            subcommand_setup()
        case "build":
            subcommand_build()
        case "gen_projects_csv":
            subcommand_generate_projects_csv()
