# postmodern-python
A very simple template for productive Python.

This is a companion to this blog post:

https://rdrn.me/postmodern-python/

## Installation
```bash
git clone git@github.com:carderne/postmodern-python.git
cd postmodern-python
pip install -e .
```

## Usage
From the command line:
```bash
python -m postmodern  # thanks to __main__.py

# or
postmodern  # thanks to pyproject.toml, project.scripts
```

From Python:
```python
from postmodern import hello
hello()
```

## Development
Using [Rye](https://rye.astral.sh/) for development (installation instructions at the link).

Install Python and dependencies:
```bash
rye sync
```

Format, lint, typecheck etc:
```bash
rye run fmt
        lint
        check
        test
        all   # runs all the above sequentially
```

## CI/CD
This has Github Actions setup for Pull Requests and for Release to PyPI.

It also has a Dockerfile.
