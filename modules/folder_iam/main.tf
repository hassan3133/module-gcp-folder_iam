resource "google_folder_iam_member" "folder_iam" {

  for_each = toset(var.members)

  folder = var.folder
  role   = var.role
  member = each.key
}
