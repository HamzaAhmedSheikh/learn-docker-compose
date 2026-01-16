FROM python:3.12-slim

# Copy uv binaries using multi-stage build
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

# Copy project files
COPY hello-world/pyproject.toml ./pyproject.toml

# Install dependencies
RUN uv sync --no-dev

# Copy application code
COPY hello-world/main.py ./main.py

EXPOSE 8000

CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
