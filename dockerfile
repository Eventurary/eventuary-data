FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Copy dependency metadata first for better layer caching
COPY pyproject.toml ./
COPY README.md ./

# Install runtime dependencies directly from [project].dependencies in pyproject.toml
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir .
RUN pip uninstall -y eventuary-data

# Copy the rest of the app
COPY . .

WORKDIR /src/main

EXPOSE 8000

# Assumes your FastAPI app lives at app/main.py and contains: app = FastAPI()
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
