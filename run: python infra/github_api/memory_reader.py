name: Memory Journal Sync

on:
  schedule:
    - cron: '0 * * * *'  # щогодини, на початку кожної години
  workflow_dispatch:      # дозволяє запуск вручну

jobs:
  read-memory:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout репозиторій
        uses: actions/checkout@v4

      - name: Встановлення Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.10'

      - name: Встановлення бібліотек
        run: pip install requests

      - name: Запуск memory_reader
        run: python infra/github_api/memory_reader.py

