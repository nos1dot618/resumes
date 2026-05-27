import csv
import requests

URL = f"https://gitlab.com/api/v4/users/ninthcircle/projects"
OUTPUT_PATH = "dist/gitlab_repos.csv"

params = {
    "visibility": "public",
    "per_page": 200
}

repos = requests.get(URL, params=params).json()

with open(OUTPUT_PATH, "w", newline="", encoding="utf-8") as f:
    writer = csv.DictWriter(f, fieldnames=["name", "description", "topics", "url"])
    writer.writeheader()

    for repo in repos:
        writer.writerow({
            "name": repo["name"],
            "description": repo["description"],
            "topics": ",".join(repo.get("topics", [])),
            "url": repo["web_url"]
        })

print(f"[INFO] Saved to '{OUTPUT_PATH}'.")