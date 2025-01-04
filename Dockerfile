# always nice to pin as precisely as possible
FROM python:3.13.1-slim-bookworm

ENV PYTHONUNBUFFERED=True
WORKDIR /app

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# First we copy just the project definition files
# so these layers can be cached
COPY pyproject.toml uv.lock ./

# install dependencies
RUN uv sync --frozen

# now copy in all the rest as late as possible
# and depending on how we're running this, we don't even need
# to install it, just copy-paste and run
COPY . /app

# if you DO want to install it, do that here

# or however else you bootstrap your app
CMD ["/app/.venv/bin/python", "/app/postmodern/server.py"]
