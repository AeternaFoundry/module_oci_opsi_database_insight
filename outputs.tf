output "opsi_database_insights_id" {
  description = "Map of id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.id if v.id != null && length(v.id) > 0 }
}
output "opsi_database_insights_compartment_id" {
  description = "Map of compartment_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no compartment_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "opsi_database_insights_connection_credential_details" {
  description = "Map of connection_credential_details values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no connection_credential_details are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => one(v.connection_credential_details) if v.connection_credential_details != null && length(v.connection_credential_details) > 0 }
  sensitive   = true
}
output "opsi_database_insights_connection_details" {
  description = "Map of connection_details values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no connection_details are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => one(v.connection_details) if v.connection_details != null && length(v.connection_details) > 0 }
}
output "opsi_database_insights_connector_id" {
  description = "Map of connector_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no connector_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.connector_id if v.connector_id != null && length(v.connector_id) > 0 }
}
output "opsi_database_insights_credential_details" {
  description = "Map of credential_details values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no credential_details are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => one(v.credential_details) if v.credential_details != null && length(v.credential_details) > 0 }
  sensitive   = true
}
output "opsi_database_insights_database_connection_status_details" {
  description = "Map of database_connection_status_details values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_connection_status_details are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_connection_status_details if v.database_connection_status_details != null && length(v.database_connection_status_details) > 0 }
}
output "opsi_database_insights_database_connector_id" {
  description = "Map of database_connector_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_connector_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_connector_id if v.database_connector_id != null && length(v.database_connector_id) > 0 }
}
output "opsi_database_insights_database_display_name" {
  description = "Map of database_display_name values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_display_name are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_display_name if v.database_display_name != null && length(v.database_display_name) > 0 }
}
output "opsi_database_insights_database_id" {
  description = "Map of database_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "opsi_database_insights_database_name" {
  description = "Map of database_name values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_name are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "opsi_database_insights_database_resource_type" {
  description = "Map of database_resource_type values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_resource_type are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_resource_type if v.database_resource_type != null && length(v.database_resource_type) > 0 }
}
output "opsi_database_insights_database_type" {
  description = "Map of database_type values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_type are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_type if v.database_type != null && length(v.database_type) > 0 }
}
output "opsi_database_insights_database_version" {
  description = "Map of database_version values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no database_version are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.database_version if v.database_version != null && length(v.database_version) > 0 }
}
output "opsi_database_insights_dbm_private_endpoint_id" {
  description = "Map of dbm_private_endpoint_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no dbm_private_endpoint_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.dbm_private_endpoint_id if v.dbm_private_endpoint_id != null && length(v.dbm_private_endpoint_id) > 0 }
}
output "opsi_database_insights_defined_tags" {
  description = "Map of defined_tags values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no defined_tags are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "opsi_database_insights_deployment_type" {
  description = "Map of deployment_type values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no deployment_type are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "opsi_database_insights_enterprise_manager_bridge_id" {
  description = "Map of enterprise_manager_bridge_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no enterprise_manager_bridge_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.enterprise_manager_bridge_id if v.enterprise_manager_bridge_id != null && length(v.enterprise_manager_bridge_id) > 0 }
}
output "opsi_database_insights_enterprise_manager_entity_display_name" {
  description = "Map of enterprise_manager_entity_display_name values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no enterprise_manager_entity_display_name are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.enterprise_manager_entity_display_name if v.enterprise_manager_entity_display_name != null && length(v.enterprise_manager_entity_display_name) > 0 }
}
output "opsi_database_insights_enterprise_manager_entity_identifier" {
  description = "Map of enterprise_manager_entity_identifier values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no enterprise_manager_entity_identifier are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.enterprise_manager_entity_identifier if v.enterprise_manager_entity_identifier != null && length(v.enterprise_manager_entity_identifier) > 0 }
}
output "opsi_database_insights_enterprise_manager_entity_name" {
  description = "Map of enterprise_manager_entity_name values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no enterprise_manager_entity_name are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.enterprise_manager_entity_name if v.enterprise_manager_entity_name != null && length(v.enterprise_manager_entity_name) > 0 }
}
output "opsi_database_insights_enterprise_manager_entity_type" {
  description = "Map of enterprise_manager_entity_type values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no enterprise_manager_entity_type are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.enterprise_manager_entity_type if v.enterprise_manager_entity_type != null && length(v.enterprise_manager_entity_type) > 0 }
}
output "opsi_database_insights_enterprise_manager_identifier" {
  description = "Map of enterprise_manager_identifier values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no enterprise_manager_identifier are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.enterprise_manager_identifier if v.enterprise_manager_identifier != null && length(v.enterprise_manager_identifier) > 0 }
}
output "opsi_database_insights_entity_source" {
  description = "Map of entity_source values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no entity_source are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.entity_source if v.entity_source != null && length(v.entity_source) > 0 }
}
output "opsi_database_insights_exadata_insight_id" {
  description = "Map of exadata_insight_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no exadata_insight_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.exadata_insight_id if v.exadata_insight_id != null && length(v.exadata_insight_id) > 0 }
}
output "opsi_database_insights_freeform_tags" {
  description = "Map of freeform_tags values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "opsi_database_insights_is_advanced_features_enabled" {
  description = "Map of is_advanced_features_enabled values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no is_advanced_features_enabled are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.is_advanced_features_enabled if v.is_advanced_features_enabled != null }
}
output "opsi_database_insights_is_heat_wave_cluster_attached" {
  description = "Map of is_heat_wave_cluster_attached values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no is_heat_wave_cluster_attached are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.is_heat_wave_cluster_attached if v.is_heat_wave_cluster_attached != null }
}
output "opsi_database_insights_is_highly_available" {
  description = "Map of is_highly_available values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no is_highly_available are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.is_highly_available if v.is_highly_available != null }
}
output "opsi_database_insights_lifecycle_details" {
  description = "Map of lifecycle_details values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "opsi_database_insights_management_agent_id" {
  description = "Map of management_agent_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no management_agent_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.management_agent_id if v.management_agent_id != null && length(v.management_agent_id) > 0 }
}
output "opsi_database_insights_opsi_private_endpoint_id" {
  description = "Map of opsi_private_endpoint_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no opsi_private_endpoint_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.opsi_private_endpoint_id if v.opsi_private_endpoint_id != null && length(v.opsi_private_endpoint_id) > 0 }
}
output "opsi_database_insights_parent_id" {
  description = "Map of parent_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no parent_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}
output "opsi_database_insights_processor_count" {
  description = "Map of processor_count values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no processor_count are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.processor_count if v.processor_count != null }
}
output "opsi_database_insights_root_id" {
  description = "Map of root_id values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no root_id are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.root_id if v.root_id != null && length(v.root_id) > 0 }
}
output "opsi_database_insights_service_name" {
  description = "Map of service_name values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no service_name are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "opsi_database_insights_state" {
  description = "Map of state values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no state are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.state if v.state != null && length(v.state) > 0 }
}
output "opsi_database_insights_status" {
  description = "Map of status values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no status are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.status if v.status != null && length(v.status) > 0 }
}
output "opsi_database_insights_system_tags" {
  description = "Map of system_tags values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no system_tags are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "opsi_database_insights_time_created" {
  description = "Map of time_created values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no time_created are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "opsi_database_insights_time_updated" {
  description = "Map of time_updated values across all opsi_database_insights, keyed the same as var.opsi_database_insights except keys with no time_updated are omitted"
  value       = { for k, v in oci_opsi_database_insight.opsi_database_insights : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

