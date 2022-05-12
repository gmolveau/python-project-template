#!/bin/bash
t=$(mktemp -d /tmp/pypi_XXXX)
echo "workdir = $t"
cd "$t" || exit
python3 -m pip download \
    poetry \
    black \
    pylint \
    mypy \
    isort \
    bandit \
    pytest \
    pydocstyle \
    flake8 \
    structlog \
    memray \
    sqltap \
    pyinstrument \
    sqlalchemy \
    alembic \
    typer \
    click \
    fastapi \
    flask \
    pydantic \
    marshmallow \
    python-dotenv \
    gunicorn \
    radon \
    pylama
zip -r "$t.zip" "$t/"
echo "done : $t.zip"
# twine upload --skip-existing *
