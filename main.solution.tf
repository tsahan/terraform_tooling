variable "domain" {
  type = string
}

locals {
  application_name = "training"
  letters          = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
  nodes = {
    count = 3
    size  = "Standard_D2s_v3"
  }

  application_name_splitted = substr(local.application_name, 0, 3)
  letters_kebab_case        = join("-", local.letters)

  domain_in_lowercase = lower(var.domain)

  resource_group_name = format("rg-%s-%s", local.application_name_splitted, local.domain_in_lowercase)
}

output "domain_in_lowercase" {
  value = local.domain_in_lowercase
}

output "nodes_count" {
  value = local.nodes.count
}

output "nodes_size" {
  value = local.nodes.size
}

output "letters_kebab_case" {
  value = local.letters_kebab_case
}

output "application_name_splitted" {
  value = local.application_name_splitted
}

output "resource_group_name" {
  value = local.resource_group_name
}

