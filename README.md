# Eventuary Data

CRUD wrapper repository for eventuary data

## Getting started

1. Install python version 3.12+
2. Initialise virtual environment: 
    ```shell
    python3 -m venv .venv
    ```
3. Activate virutal Environment 
    >Unix systems
    >
    >`source bin/activate`

    >Windows Systems
    >
    >`. .venv/Scripts/activate`

4. Install Dependencies:
    ```shell
    pip install .[dev] && pip uninstall -y eventuary-data
    ```

## Lint Checking

```shell
ruff check
```

## Type checking

```shell
ty check
```

## Run tests

```shell
pytest
```