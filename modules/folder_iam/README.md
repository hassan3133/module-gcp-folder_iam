# Google Cloud Folder IAM Terraform Module
![Maintained by Priceline.com](https://img.shields.io/badge/maintained%20by-priceline.com-blue)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.13-blue.svg)


## Usage
Many examples are included in the [examples](../../examples/) folder, but simple usage is as follows:

```hcl
module "compute_admin" {
  source = "../modules/folder_iam"

  folder = "folders/123456789"
  role   = "roles/compute.admin"

  members = [
    "serviceAccount:pl-terraform@pcln-pl-infra-prod.iam.gserviceaccount.com",
    "group:clouddev@priceline.com",
  ]
}
```

### Variables
To control module's behavior, change variables' values regarding the following:

<!-- BEGIN_TF_DOCS -->
#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|
| [google_folder_iam_member.folder_iam](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder_iam_member) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_folder"></a> [folder](#input_folder) | folder name (folder ID) | `string` | n/a | yes |
| <a name="input_members"></a> [members](#input_members) | entities to be added to the role | `list(string)` | n/a | yes |
| <a name="input_role"></a> [role](#input_role) | GCP role | `string` | n/a | yes |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->
