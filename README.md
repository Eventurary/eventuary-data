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

## Jira Board
[Link to the board](https://eventurary.atlassian.net/jira/software/projects/EV/boards/34?atlOrigin=eyJpIjoiN2VjNThiZWU0YzNmNDQ3YTk2MmM5NDA1YTBkMTZhM2EiLCJwIjoiaiJ9)

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

## Run containers
Create and run containers:
```shell
docker compose up
```

Running containers:
```shell
docker compose start
```

Stopping containers:
```shell
dockker compose stop
```

## Viewing data in browser

1. Run the containers
2. Ensure both database and adminer containers are running
3. Go to `http://localhost:8080`