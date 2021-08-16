# Datacore Take Home Assignment

This repository is a small [monorepo](https://en.wikipedia.org/wiki/Monorepo) with several projects in multiple languages.

## Instructions

1. Configure a build system of your choice to build projects from **exactly two** of the available languages in this repository.
    * Builds should run automatically on commit.
    * For project sub-folders, we expect a build only when there have been changes made to the sub-folder since the previous build run. e.g. When there is a commit to only the Python project, then a Go build should not be triggered. Similarly, a commit made to both the Go and Python projects should build both.
2. Some builds require that some steps only be executed when there is a commit to a specific branch.
    * `deps`, `test`, and `build` should be run on every branch when there is a commit.
    * `publish` should only be run when there is a commit to master.
3. Care should be taken to make sure project builds are isolated from each other.

## Deliverables

1. A publicly accessible link to the git repository (e.g. GitHub, Bitbucket, etc.)
    * **Privacy note**: if you fork this repo, other candidates can see your account.  If this is undesirable, then copy this to a new repo instead or use a new GitHub account.
3. A publicly accessible link to the output of your build pipeline

## Helpful Tips

1. Assume that all builds should be run on a *nix like operating system
2. Assume that the underlying version control system is git
3. Assume that each sub-folder project is independent and has no cross-dependencies
4. Each language folder contains a `Makefile` with the same 4 make targets that should be run in the following order
    1. `deps` - Install dependencies
    2. `test` - Run unit tests
    3. `build` - Produce an artifact
    4. `publish` - Simulate publishing a successfully built artifact to a package repository.
5. The README.md file in each language folder contains more detailed instructions for the various make targets and how to run them with the `make` command

## Free Build Services

Please use which ever build system you are the most comfortable with, we want to know what you are capable of using a tool you are already familiar with. If you are not familiar with an existing CI/CD tool here are some recommendations for free cloud-based build services you could use:

* [CircleCI](https://circleci.com/)
* [Travis CI](https://www.travis-ci.com/)
* [GitHub Actions](https://github.com/features/actions)
* [Bitbucket Pipelines](https://bitbucket.org/product/features/pipelines)
* [Gitlab CI](https://about.gitlab.com/)
