import os
import requests

# === Налаштування ===
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
REPO_OWNER = "OFELAH"
REPO_NAME = "Yadro_Proryvu"
ARCHIVE_PATH = "Journal_Pamjati/archive_read"

def get_recent_files(path, count=5):
    url = f"https://api.github.com/repos/{REPO_OWNER}/{REPO_NAME}/contents/{path}"
    headers = {
        "Authorization": f"token {GITHUB_TOKEN}",
        "Accept": "application/vnd.github.v3+json"
    }
    response = requests.get(url, headers=headers)
    response.raise_for_status()

    files = response.json()
    markdown_files = [f for f in files if f['name'].endswith('.md')]
    recent = sorted(markdown_files, key=lambda f: f['name'], reverse=True)[:count]

    return recent

def print_file_contents(files):
    for file in files:
        print(f"\n📂 Файл: {file['name']}")
        response = requests.get(file['download_url'])
        response.raise_for_status()
        print(response.text)
        print("=" * 60)

if __name__ == "__main__":
    files = get_recent_files(ARCHIVE_PATH)
    print_file_contents(files)
