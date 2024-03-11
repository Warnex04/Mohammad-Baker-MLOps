@ECHO OFF
SETLOCAL

IF "%1"=="prepare" (
    poetry install
    GOTO END
)

IF "%1"=="run" (
    poetry run streamlit run app/streamlit_app.py
    GOTO END
)

IF "%1"=="check" (
    CALL poetry run vulture app || EXIT /B 0
    CALL poetry run isort --check-only app
    CALL poetry run black --check app
    CALL poetry run mypy app
    GOTO END
)

IF "%1"=="build" (
    docker build -t housing-statistics .
    GOTO END
)

:END
ENDLOCAL
