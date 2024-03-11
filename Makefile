.PHONY: prepare run check build

prepare:
	poetry install

run:
	poetry run streamlit run app/streamlit_app.py

check:
	poetry run vulture app || true
	poetry run isort --check-only app
	poetry run black --check app
	poetry run mypy app

build:
	docker build -t housing-statistics .