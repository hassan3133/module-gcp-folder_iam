variable "folder" {
  description = "folder name (folder ID)"
  type        = string

  validation {
    condition     = can(regex("^folders\\/[0-9]", var.folder)) && var.folder != null
    error_message = "The folder value must be a valid Folder ID, starting with \"folders/\"."
  }
}

variable "role" {
  description = "GCP role"
  type        = string
}

variable "members" {
  description = "entities to be added to the role"
  type        = list(string)
}
