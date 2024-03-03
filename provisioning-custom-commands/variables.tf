variable "instance_name" {
  description = "An example of a simple string variable that uniquely identifies the resources created in this configuration"
  type        = string
}

variable "extra_content" {
  description = "The extra content to add to the file in the target directory; if this is empty, nothing is added."
  type        = string
}

variable "extra_commands" {
  description = "Extra commands to run after the initial setup"
  type        = list(string)
  default     = []
}

variable "some_token" {
  description = "An example of a secret token that would be available in the local-exec provisioning step"
  type        = string
}
