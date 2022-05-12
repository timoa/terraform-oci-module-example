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

## Usage

### OCI Authentication

You can use a session token when developing on your local machine,
 but for usage with Terraform Cloud or other CI/CD, you need to set
 environment variables based on the generated `~/.oci/config` file,
 to use the API Key authentication.

> An OCI session-token is valid only one hour and not suitable for CI/CD.

```bash
oci session authenticate
```

Open the OCI config file to fill the required environment variables
 for the API Key Authentication:

```bash
nano ~/.oci/config
```

Add your credentials into your `~/.zprofile` or `~/.bash_profile` file:

```bash
# Oracle Cloud Infrastructure
export TF_VAR_tenancy_ocid="ocid1.tenancy.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
export TF_VAR_user_ocid="ocid1.user.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
export TF_VAR_fingerprint="xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
export TF_VAR_private_key=$(cat /home/xxxx/.oci/oci_api_key.pem)
```

### Integrate the module into your Terraform project

If you want to use this module inside your project, you can use the following code (change the tag to match the latest version):

```bash
module "module-template" {
  source = "git::https://github.com/timoa/terraform-oci-module-example.git?ref=tags/0.2.1"

  # Required
  region    = "uk-london-1"

  # Optional
  namespace = "my-project"
  stage     = "prod"
}
```

### Output example

```bash
terraform init
terraform plan
```

```bash
Changes to Outputs:
  + regions = [
    + {
        + key  = "AMS"
        + name = "eu-amsterdam-1"
      },
    + {
        + key  = "ARN"
        + name = "eu-stockholm-1"
      },
    + {
        + key  = "AUH"
        + name = "me-abudhabi-1"
      },
    + {
        + key  = "BOM"
        + name = "ap-mumbai-1"
      },
    + {
        + key  = "CWL"
        + name = "uk-cardiff-1"
      },
    + {
        + key  = "DXB"
        + name = "me-dubai-1"
      },
    + {
        + key  = "FRA"
        + name = "eu-frankfurt-1"
      },
    + {
        + key  = "GRU"
        + name = "sa-saopaulo-1"
      },
    + {
        + key  = "HYD"
        + name = "ap-hyderabad-1"
      },
    + {
        + key  = "IAD"
        + name = "us-ashburn-1"
      },
    + {
        + key  = "ICN"
        + name = "ap-seoul-1"
      },
    + {
        + key  = "JED"
        + name = "me-jeddah-1"
      },
    + {
        + key  = "JNB"
        + name = "af-johannesburg-1"
      },
    + {
        + key  = "KIX"
        + name = "ap-osaka-1"
      },
    + {
        + key  = "LHR"
        + name = "uk-london-1"
      },
    + {
        + key  = "LIN"
        + name = "eu-milan-1"
      },
    + {
        + key  = "MEL"
        + name = "ap-melbourne-1"
      },
    + {
        + key  = "MRS"
        + name = "eu-marseille-1"
      },
    + {
        + key  = "MTZ"
        + name = "il-jerusalem-1"
      },
    + {
        + key  = "NRT"
        + name = "ap-tokyo-1"
      },
    + {
        + key  = "PHX"
        + name = "us-phoenix-1"
      },
    + {
        + key  = "SCL"
        + name = "sa-santiago-1"
      },
    + {
        + key  = "SIN"
        + name = "ap-singapore-1"
      },
    + {
        + key  = "SJC"
        + name = "us-sanjose-1"
      },
    + {
        + key  = "SYD"
        + name = "ap-sydney-1"
      },
    + {
        + key  = "VCP"
        + name = "sa-vinhedo-1"
      },
    + {
        + key  = "YNY"
        + name = "ap-chuncheon-1"
      },
    + {
        + key  = "YUL"
        + name = "ca-montreal-1"
      },
    + {
        + key  = "YYZ"
        + name = "ca-toronto-1"
      },
    + {
        + key  = "ZRH"
        + name = "eu-zurich-1"
      },
  ]

You can apply this plan to save these new output values to the Terraform
state, without changing any real infrastructure.
```

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
