<img width=250px src="https://atsign.dev/assets/img/atPlatform_logo_gray.svg?sanitize=true">

# Certinfo Action

This action makes the [certinfo](https://github.com/pete911/certinfo) tool
available to Actions workflows by:

* Downloading certinfo
* Adding `certinfo` to path

So that certificates can be validated as part of a workflow.

# Usage

## Basic example

```yaml
name: Certinfo

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v3
      - uses: atsign-company/certinfo-action@v1

      - name: Get certinfo for root server
        run: certinfo root.atsign.org:64
```

# Version History

## v1.0.1
* Converted action.yml and test.yml from CRLF to LF
* Bumped checkout to v3 in example

## v1.0
* Promoted to 1.0

## v0.6
* Add RUNNER_TOOL_CACHE to PATH
* Got it working

## v0.5
* Move certinfo to RUNNER_TOOL_CACHE

## v0.4
* Follow redirects to fetch from GitHub releases

## v0.3 
* Updated test workflow

## v0.2
* Made setup.sh executable

## v0.1
* Initial version.

## Acknowledgement/Attribution

[Certinfo](https://github.com/pete911/certinfo) was created by Peter Reisinger
([@pete911](https://github.com/pete911)) and uses the
[MIT License](https://github.com/pete911/certinfo/blob/main/LICENSE)

## LICENSE

Licensed under the BSD 3 clause [LICENSE](LICENSE)

## Maintainers

This project was created by [@cpswan](https://github.com/cpswan/)
