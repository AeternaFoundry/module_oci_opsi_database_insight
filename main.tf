resource "oci_opsi_database_insight" "opsi_database_insights" {
  for_each = var.opsi_database_insights

  compartment_id                       = each.value.compartment_id
  entity_source                        = each.value.entity_source
  connector_id                         = each.value.connector_id
  database_connection_status_details   = each.value.database_connection_status_details
  database_connector_id                = each.value.database_connector_id
  database_id                          = each.value.database_id
  database_resource_type               = each.value.database_resource_type
  dbm_private_endpoint_id              = each.value.dbm_private_endpoint_id
  defined_tags                         = each.value.defined_tags
  deployment_type                      = each.value.deployment_type
  enterprise_manager_bridge_id         = each.value.enterprise_manager_bridge_id
  enterprise_manager_entity_identifier = each.value.enterprise_manager_entity_identifier
  enterprise_manager_identifier        = each.value.enterprise_manager_identifier
  exadata_insight_id                   = each.value.exadata_insight_id
  freeform_tags                        = each.value.freeform_tags
  is_advanced_features_enabled         = each.value.is_advanced_features_enabled
  management_agent_id                  = each.value.management_agent_id
  opsi_private_endpoint_id             = each.value.opsi_private_endpoint_id
  service_name                         = each.value.service_name
  status                               = each.value.status
  system_tags                          = each.value.system_tags

  dynamic "connection_credential_details" {
    for_each = each.value.connection_credential_details != null ? [each.value.connection_credential_details] : []
    content {
      credential_source_name = connection_credential_details.value.credential_source_name
      credential_type        = connection_credential_details.value.credential_type
      named_credential_id    = connection_credential_details.value.named_credential_id
      password_secret_id     = connection_credential_details.value.password_secret_id
      role                   = connection_credential_details.value.role
      user_name              = connection_credential_details.value.user_name
    }
  }

  dynamic "connection_details" {
    for_each = each.value.connection_details != null ? [each.value.connection_details] : []
    content {
      host_name = connection_details.value.host_name
      dynamic "hosts" {
        for_each = connection_details.value.hosts != null ? connection_details.value.hosts : []
        content {
          host_ip = hosts.value.host_ip
          port    = hosts.value.port
        }
      }
      port         = connection_details.value.port
      protocol     = connection_details.value.protocol
      service_name = connection_details.value.service_name
    }
  }

  dynamic "credential_details" {
    for_each = each.value.credential_details != null ? [each.value.credential_details] : []
    content {
      credential_source_name = credential_details.value.credential_source_name
      credential_type        = credential_details.value.credential_type
      named_credential_id    = credential_details.value.named_credential_id
      password_secret_id     = credential_details.value.password_secret_id
      role                   = credential_details.value.role
      user_name              = credential_details.value.user_name
      wallet_secret_id       = credential_details.value.wallet_secret_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

