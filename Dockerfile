# --- Base Stage: Install Dependencies ---
FROM python:3.13.1-slim-bookworm AS base

ENV PYTHONUNBUFFERED=True
WORKDIR /app

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Copy project definition files for caching
COPY pyproject.toml uv.lock ./

# Install dependencies using uv
RUN uv sync --frozen

# --- Final Stage: Build Application Image ---
FROM python:3.13.1-slim-bookworm AS runner

WORKDIR /app

# Copy the virtual environment from the base stage
COPY --from=base /app/.venv ./.venv

# Copy application code
COPY . /app

# Set the entrypoint
CMD ["/app/.venv/bin/python", "/app/postmodern/server.py"]
