## [0.2.4](https://github.com/timoa/terraform-module-oci-example/compare/v0.2.3...v0.2.4) (2022-06-21)


### Bug Fixes

* **cicd:** update the label name for the dependencies ([53fbc07](https://github.com/timoa/terraform-module-oci-example/commit/53fbc077f2a7340bc8c2038de82e0f081d08354f))

## [0.2.3](https://github.com/timoa/terraform-module-oci-example/compare/v0.2.2...v0.2.3) (2022-05-12)


### Bug Fixes

* **cicd:** add missing env vars on the code review jobs for TFLint and TFSec ([88cbc65](https://github.com/timoa/terraform-module-oci-example/commit/88cbc65e7041e99b3ffbcd25408ad58bcc9e97fc))

## [0.2.2](https://github.com/timoa/terraform-module-oci-example/compare/v0.2.1...v0.2.2) (2022-05-12)


### Bug Fixes

* **output:** fix the empty output by listing the OCI regions instead of the quotas ([49816cc](https://github.com/timoa/terraform-module-oci-example/commit/49816ccf265a43a6805bc3d952614c5241e2f594))

## [0.2.1](https://github.com/timoa/terraform-module-oci-example/compare/v0.2.0...v0.2.1) (2022-05-12)

# [0.2.0](https://github.com/timoa/terraform-module-oci-example/compare/v0.1.0...v0.2.0) (2022-05-05)


### Bug Fixes

* **cicd:** add the auth config for OCI ([53fd294](https://github.com/timoa/terraform-module-oci-example/commit/53fd29461caa02c422770087e152a3c24ea7430f))
* **cicd:** fix old GitHub Actions addPath function ([9a1eda3](https://github.com/timoa/terraform-module-oci-example/commit/9a1eda3c9365e30f86180282b9b4accea1ce83a3))
* **cicd:** force checkout of the main branch during release to get latest changes ([adca009](https://github.com/timoa/terraform-module-oci-example/commit/adca009e74047d4d84cb56f3458140ff61e34d61))
* **cicd:** try to fix the OCI auth on GitHub Actions ([587ab3f](https://github.com/timoa/terraform-module-oci-example/commit/587ab3f463c96e77984f8e429e69df057669a233))
* **provider:** try to fix the OCI authentication ([f5d16d7](https://github.com/timoa/terraform-module-oci-example/commit/f5d16d7b9a4eb5c384a5519b7c2d8c4b0c199af4))


### Features

* **terraform:** add the default variables for the OCI auth + get quotas for a specific region ([cb381bb](https://github.com/timoa/terraform-module-oci-example/commit/cb381bba1c8c846528ea67b84f34f0b151ab2659))
