module "compute_admin" {
  source = "../modules/folder_iam"

  folder = "folders/123456789"
  role   = "roles/compute.admin"

  members = [
    "serviceAccount:pl-terraform@pcln-pl-infra-prod.iam.gserviceaccount.com",
    "group:clouddev@priceline.com",
  ]
}
