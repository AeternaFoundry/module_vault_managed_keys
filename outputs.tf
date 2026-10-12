output "managed_keys_id" {
  description = "Map of id values across all managed_keys, keyed the same as var.managed_keys except keys with no id are omitted"
  value       = { for k, v in vault_managed_keys.managed_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_keys_aws" {
  description = "Map of aws values across all managed_keys, keyed the same as var.managed_keys except keys with no aws are omitted"
  value       = { for k, v in vault_managed_keys.managed_keys : k => v.aws if v.aws != null && length(v.aws) > 0 }
}
output "managed_keys_azure" {
  description = "Map of azure values across all managed_keys, keyed the same as var.managed_keys except keys with no azure are omitted"
  value       = { for k, v in vault_managed_keys.managed_keys : k => v.azure if v.azure != null && length(v.azure) > 0 }
}
output "managed_keys_gcp" {
  description = "Map of gcp values across all managed_keys, keyed the same as var.managed_keys except keys with no gcp are omitted"
  value       = { for k, v in vault_managed_keys.managed_keys : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}
output "managed_keys_namespace" {
  description = "Map of namespace values across all managed_keys, keyed the same as var.managed_keys except keys with no namespace are omitted"
  value       = { for k, v in vault_managed_keys.managed_keys : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "managed_keys_pkcs" {
  description = "Map of pkcs values across all managed_keys, keyed the same as var.managed_keys except keys with no pkcs are omitted"
  value       = { for k, v in vault_managed_keys.managed_keys : k => v.pkcs if v.pkcs != null && length(v.pkcs) > 0 }
}

