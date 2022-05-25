terraform {
  experiments = [module_variable_optional_attrs]
}

provider "aws" {
  region = "us-east-1"
}

variable "object_var" {
  type = object({
    behavior = string
    items    = optional(list(string))
  })
  default     = { behavior = "none" }
}

output "test" {
 value = var.object_var
}
