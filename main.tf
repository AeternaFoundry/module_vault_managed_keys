resource "vault_managed_keys" "managed_keys" {
  for_each = var.managed_keys

  namespace = each.value.namespace

  dynamic "aws" {
    for_each = each.value.aws != null ? each.value.aws : []
    content {
      access_key         = aws.value.access_key
      allow_generate_key = aws.value.allow_generate_key
      allow_replace_key  = aws.value.allow_replace_key
      allow_store_key    = aws.value.allow_store_key
      any_mount          = aws.value.any_mount
      curve              = aws.value.curve
      endpoint           = aws.value.endpoint
      key_bits           = aws.value.key_bits
      key_type           = aws.value.key_type
      kms_key            = aws.value.kms_key
      name               = aws.value.name
      region             = aws.value.region
      secret_key         = aws.value.secret_key
      usages             = aws.value.usages
    }
  }

  dynamic "azure" {
    for_each = each.value.azure != null ? each.value.azure : []
    content {
      allow_generate_key = azure.value.allow_generate_key
      allow_replace_key  = azure.value.allow_replace_key
      allow_store_key    = azure.value.allow_store_key
      any_mount          = azure.value.any_mount
      client_id          = azure.value.client_id
      client_secret      = azure.value.client_secret
      environment        = azure.value.environment
      key_bits           = azure.value.key_bits
      key_name           = azure.value.key_name
      key_type           = azure.value.key_type
      name               = azure.value.name
      resource           = azure.value.resource
      tenant_id          = azure.value.tenant_id
      usages             = azure.value.usages
      vault_name         = azure.value.vault_name
    }
  }

  dynamic "gcp" {
    for_each = each.value.gcp != null ? each.value.gcp : []
    content {
      algorithm          = gcp.value.algorithm
      allow_generate_key = gcp.value.allow_generate_key
      allow_replace_key  = gcp.value.allow_replace_key
      allow_store_key    = gcp.value.allow_store_key
      any_mount          = gcp.value.any_mount
      credentials        = gcp.value.credentials
      crypto_key         = gcp.value.crypto_key
      crypto_key_version = gcp.value.crypto_key_version
      key_ring           = gcp.value.key_ring
      name               = gcp.value.name
      project            = gcp.value.project
      region             = gcp.value.region
      usages             = gcp.value.usages
    }
  }

  dynamic "pkcs" {
    for_each = each.value.pkcs != null ? each.value.pkcs : []
    content {
      allow_generate_key = pkcs.value.allow_generate_key
      allow_replace_key  = pkcs.value.allow_replace_key
      allow_store_key    = pkcs.value.allow_store_key
      any_mount          = pkcs.value.any_mount
      curve              = pkcs.value.curve
      force_rw_session   = pkcs.value.force_rw_session
      key_bits           = pkcs.value.key_bits
      key_id             = pkcs.value.key_id
      key_label          = pkcs.value.key_label
      library            = pkcs.value.library
      max_parallel       = pkcs.value.max_parallel
      mechanism          = pkcs.value.mechanism
      name               = pkcs.value.name
      pin                = pkcs.value.pin
      slot               = pkcs.value.slot
      token_label        = pkcs.value.token_label
      usages             = pkcs.value.usages
    }
  }
}

