<img src="https://atsign.dev/assets/img/@dev.png?sanitize=true">

### Now for a little internet optimism

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
      - uses: actions/checkout@v2
      - uses: atsign-company/certinfo-action@v1

      - name: Get certinfo for root server
        run: certinfo root.atsign.org:64
```

# Version History

## v0.1
* Initial version.

## Acknowledgement/Attribution

[Certinfo](https://github.com/pete911/certinfo) was created by Peter Reisinger
(@pete911)[https://github.com/pete911] and uses the
[MIT License](https://github.com/pete911/certinfo/blob/main/LICENSE)

## LICENSE

Licensed under the BSD 3 clause [LICENSE](LICENSE)

## Maintainers

This project was created by [@cpswan](https://github.com/cpswan/)