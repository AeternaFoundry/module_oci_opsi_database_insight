variable "opsi_database_insights" {
  description = <<EOT
Map of opsi_database_insights, attributes below
Required:
    - compartment_id
    - entity_source
Optional:
    - connector_id
    - database_connection_status_details
    - database_connector_id
    - database_id
    - database_resource_type
    - dbm_private_endpoint_id
    - defined_tags
    - deployment_type
    - enterprise_manager_bridge_id
    - enterprise_manager_entity_identifier
    - enterprise_manager_identifier
    - exadata_insight_id
    - freeform_tags
    - is_advanced_features_enabled
    - management_agent_id
    - opsi_private_endpoint_id
    - service_name
    - status
    - system_tags
    - connection_credential_details (block):
        - credential_source_name (optional)
        - credential_type (required)
        - named_credential_id (optional)
        - password_secret_id (optional)
        - role (optional)
        - user_name (optional)
    - connection_details (block):
        - host_name (optional)
        - hosts (optional, block):
            - host_ip (optional)
            - port (optional)
        - port (optional)
        - protocol (optional)
        - service_name (optional)
    - credential_details (block):
        - credential_source_name (optional)
        - credential_type (required)
        - named_credential_id (optional)
        - password_secret_id (optional)
        - role (optional)
        - user_name (optional)
        - wallet_secret_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                       = string
    entity_source                        = string
    connector_id                         = optional(string)
    database_connection_status_details   = optional(string)
    database_connector_id                = optional(string)
    database_id                          = optional(string)
    database_resource_type               = optional(string)
    dbm_private_endpoint_id              = optional(string)
    defined_tags                         = optional(map(string))
    deployment_type                      = optional(string)
    enterprise_manager_bridge_id         = optional(string)
    enterprise_manager_entity_identifier = optional(string)
    enterprise_manager_identifier        = optional(string)
    exadata_insight_id                   = optional(string)
    freeform_tags                        = optional(map(string))
    is_advanced_features_enabled         = optional(bool)
    management_agent_id                  = optional(string)
    opsi_private_endpoint_id             = optional(string)
    service_name                         = optional(string)
    status                               = optional(string)
    system_tags                          = optional(map(string))
    connection_credential_details = optional(object({
      credential_source_name = optional(string)
      credential_type        = string
      named_credential_id    = optional(string)
      password_secret_id     = optional(string)
      role                   = optional(string)
      user_name              = optional(string)
    }))
    connection_details = optional(object({
      host_name = optional(string)
      hosts = optional(list(object({
        host_ip = optional(string)
        port    = optional(number)
      })))
      port         = optional(number)
      protocol     = optional(string)
      service_name = optional(string)
    }))
    credential_details = optional(object({
      credential_source_name = optional(string)
      credential_type        = string
      named_credential_id    = optional(string)
      password_secret_id     = optional(string)
      role                   = optional(string)
      user_name              = optional(string)
      wallet_secret_id       = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.opsi_database_insights : (
        contains([for v in ["AUTONOMOUS_DATABASE", "EM_MANAGED_EXTERNAL_DATABASE", "EXTERNAL_MYSQL_DATABASE_SYSTEM", "MACS_MANAGED_AUTONOMOUS_DATABASE", "MACS_MANAGED_CLOUD_DATABASE", "MACS_MANAGED_EXTERNAL_DATABASE", "MDS_MYSQL_DATABASE_SYSTEM", "PE_COMANAGED_DATABASE"] : lower(v)], lower(v.entity_source))
      )
    ])
    error_message = "must be one of: \"AUTONOMOUS_DATABASE\", \"EM_MANAGED_EXTERNAL_DATABASE\", \"EXTERNAL_MYSQL_DATABASE_SYSTEM\", \"MACS_MANAGED_AUTONOMOUS_DATABASE\", \"MACS_MANAGED_CLOUD_DATABASE\", \"MACS_MANAGED_EXTERNAL_DATABASE\", \"MDS_MYSQL_DATABASE_SYSTEM\", \"PE_COMANAGED_DATABASE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.opsi_database_insights : (
        v.connection_credential_details == null || (contains([for v in ["CREDENTIALS_BY_NAMED_CREDS", "CREDENTIALS_BY_SOURCE", "CREDENTIALS_BY_VAULT"] : lower(v)], lower(v.connection_credential_details.credential_type)))
      )
    ])
    error_message = "must be one of: \"CREDENTIALS_BY_NAMED_CREDS\", \"CREDENTIALS_BY_SOURCE\", \"CREDENTIALS_BY_VAULT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.opsi_database_insights : (
        v.credential_details == null || (contains([for v in ["CREDENTIALS_BY_IAM", "CREDENTIALS_BY_SOURCE", "CREDENTIALS_BY_VAULT"] : lower(v)], lower(v.credential_details.credential_type)))
      )
    ])
    error_message = "must be one of: \"CREDENTIALS_BY_IAM\", \"CREDENTIALS_BY_SOURCE\", \"CREDENTIALS_BY_VAULT\""
  }
}

