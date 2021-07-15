# Ruby Project

This project should be run using ruby version 2.7.4

## Install Dependencies

`$> make deps`

## Running Tests

`$> make test`

## Building the Artefact

`$> make build`

### Outputs

The following outputs should be preserved by the build pipeline:

* ./takehome-*.gem

## Publishing the Artefact

This command mocks publishing an artefact and should only be run on all commits to the master branch

`$> make publish`
