terraform {
  experiments = [module_variable_optional_attrs]
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
