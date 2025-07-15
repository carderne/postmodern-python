# postmodern-python
A very simple template for productive Python.

**Now with [uv](https://docs.astral.sh/uv/)!**

This template pulls together most of the advice and ideas from this blog post, which explains the choices in more detail:

[Beyond Hypermodern: Python is easy now](https://rdrn.me/postmodern-python/)

It includes the following bits:
- uv for Python, virtual env, dependency management and script running
- Ruff for formatting and linting (replaces isort, flake, isort etc)
- Pyright for type checking (set to strict mode, but do what makes you happy)
- Pytest for tests
- A Github Actions workflows for formatting/linting/checking/testing PRs/merges
- Another for releasing to PyPI
- A basic Dockerfile for running in a container
- Some basic Python snippets to get you started
- The rest of this README!

## 🤔 How to use this template
This template can be used in two ways:

### As a GitHub Template
1. Hit the green `Use this template` button up on the right next to the stars
2. Give your new repository a name and then clone it to your dev environment.
3. Rename it:
```bash
./rename.sh your-cool-new-name
```
4. Run `uv sync`
5. Have a look at the stuff below here, try out some commands and edit this README as you like!

### As a Copier Template
Alternatively, you can use [Copier](https://copier.readthedocs.io/) to generate a new project from this template.
This is the recommended approach as it allows you to configure the project with your details.

```bash
uxv copier copy -r template https://github.com/carderne/postmodern-python <my_project>
```

## 💾 Installation (not development!)
```bash
git clone git@github.com:carderne/postmodern-python.git
cd postmodern-python
pip install -e .
```

## 🚀 Usage
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

## 🧱 Development
Using [uv](https://docs.astral.sh/uv/) for development:
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Install Python and dependencies:
```bash
uv sync
```

Format, lint, typecheck etc:
```bash
uv run poe fmt
           lint
           check
           test
           all   # runs all the above sequentially
```

## 🦺 CI/CD
This has Github Actions setup for Pull Requests and for Release to PyPI.
1. The [pr.yml](.github/workflows/pr.yml) workflow will run on any new Pull Request.
Change some code, open a PR and wait for teh green tick!

2. The [release.yml](.github/workflows/release.yml) is for releasing packages to PyPI.
It is currently set up to to run only when you create a new [Release](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository).
But you can change that!

### Docker
It also has a Dockerfile that you can try out as follows:
1. Build it
```bash
docker build --tag postmodern-image .
```

2. Run it
```bash
docker run --rm -it postmodern-image

# output
# I dunno, start the server or something?
```
