# Terraform Module Oracle Cloud Infrastructure example

[![Latest Release][release-badge]][release-url]
[![Build Status][github-badge]][github-url]
[![License][license-badge]][license-url]

A Terraform module uses as a template to start new module.

It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp.

* [Pre-commit][pre-commit-url]: enforce checks on the module before commit
* [Semantic Release][semantic-release-url]: automate the release and version process
* [Reviewdog][reviewdog-url]: automate the review process with per code line comments (TFLint & TFSec checks)
* [Renovate][renovate-url]: automate the dependency management (update provider version, etc.)
* [ShiftLeft SCAN][shiftleft-scan-url]: security audit tool to detect security flaws in application and infrastructure code

[github-badge]: https://github.com/timoa/terraform-module-oci-example/workflows/Terraform/badge.svg
[github-url]: https://github.com/timoa/terraform-module-oci-example/actions?query=workflow%3ATerraform
[release-badge]: https://img.shields.io/github/release/timoa/terraform-module-oci-example.svg
[release-url]: https://github.com/timoa/terraform-module-oci-example/releases/latest
[license-badge]: https://img.shields.io/github/license/timoa/terraform-module-oci-example.svg
[license-url]: https://github.com/timoa/terraform-module-oci-example/blob/main/LICENSE
[pre-commit-url]: https://pre-commit.com/
[semantic-release-url]: https://semantic-release.gitbook.io/semantic-release/
[reviewdog-url]: https://github.com/reviewdog/reviewdog
[renovate-url]: https://www.whitesourcesoftware.com/free-developer-tools/renovate/
[shiftleft-scan-url]: https://shiftleft.io/docs/scan/
