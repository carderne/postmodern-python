FROM python:3.12.2-slim-bookworm

ENV PYTHONUNBUFFERED True
WORKDIR /app

COPY pyproject.toml requirements.lock ./
RUN sed -i '/^-e file:/d' requirements.lock
RUN pip install . --constraint requirements.lock

COPY . ./

CMD ["python", "postmodern/entry.py"]
