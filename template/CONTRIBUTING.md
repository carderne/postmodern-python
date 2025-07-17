# Contributing

Thank you for your interest in contributing to this project!

This repository serves a dual purpose:
1.  It is a [Copier](https://copier.readthedocs.io/) template.
2.  It is a standard GitHub template repository.

This is achieved through a CI/CD process where the `template` branch, containing the Copier Jinja2 templates, is rendered and pushed to the `main` branch. The `main` branch can then be used as a regular GitHub template.

## Development Workflow

Because of this setup, all development must happen on the `template` branch. The `main` branch is protected and automatically updated.

To contribute, please follow these steps:

1.  **Fork the repository.**
2.  **Create a new branch from the `template` branch.**
    ```bash
    git checkout template
    git checkout -b my-new-feature
    ```
3.  **Make your changes.**
    -   Modify the template files. They have a `.jinja` extension if the content of the file is
        manipulated, and the curly braces in the names is jinja too that is interpolated.
    -   If you're adding new template variables, update `copier.yml`.
4.  **Test your changes (if applicable).**
    You can test the template rendering locally using `copier`.
5.  **Commit your changes and push your branch.**
6.  **Open a Pull Request against the `template` branch.**

Your pull request will be reviewed, and once merged, a GitHub Actions workflow will automatically render the updated template and commit the result to the `main` branch.

Direct pushes or pull requests to the `main` cannot be accepted.
