# postmodern-python
A very simple template for productive Python.

This template pulls together most of the advice and ideas from this blog post, which explains the choices in more detail:

[Beyond Hypermodern: Python is easy now](https://rdrn.me/postmodern-python/)

It includes the following bits:
- Rye for Python, virtual env, dependency management and script running
- Ruff for formatting and linting (replaces isort, flake, isort etc)
- Pyright for type checking (set to strict mode, but do what makes you happy)
- Pytest for tests
- A Github Actions workflows for formatting/linting/checking/testing PRs/merges
- Another for releasing to PyPI
- A basic Dockerfile for running in a container
- Some basic Python snippets to get you started
- The rest of this README!



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
