output "rds_clusters_id" {
  description = "Map of id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rds_clusters_allocated_storage" {
  description = "Map of allocated_storage values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.allocated_storage if v.allocated_storage != null }
}
output "rds_clusters_allow_major_version_upgrade" {
  description = "Map of allow_major_version_upgrade values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.allow_major_version_upgrade if v.allow_major_version_upgrade != null }
}
output "rds_clusters_apply_immediately" {
  description = "Map of apply_immediately values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.apply_immediately if v.apply_immediately != null }
}
output "rds_clusters_arn" {
  description = "Map of arn values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "rds_clusters_auto_minor_version_upgrade" {
  description = "Map of auto_minor_version_upgrade values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.auto_minor_version_upgrade if v.auto_minor_version_upgrade != null }
}
output "rds_clusters_availability_zones" {
  description = "Map of availability_zones values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "rds_clusters_backtrack_window" {
  description = "Map of backtrack_window values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.backtrack_window if v.backtrack_window != null }
}
output "rds_clusters_backup_retention_period" {
  description = "Map of backup_retention_period values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.backup_retention_period if v.backup_retention_period != null }
}
output "rds_clusters_ca_certificate_identifier" {
  description = "Map of ca_certificate_identifier values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.ca_certificate_identifier if v.ca_certificate_identifier != null && length(v.ca_certificate_identifier) > 0 }
}
output "rds_clusters_ca_certificate_valid_till" {
  description = "Map of ca_certificate_valid_till values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.ca_certificate_valid_till if v.ca_certificate_valid_till != null && length(v.ca_certificate_valid_till) > 0 }
}
output "rds_clusters_cluster_identifier" {
  description = "Map of cluster_identifier values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "rds_clusters_cluster_identifier_prefix" {
  description = "Map of cluster_identifier_prefix values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.cluster_identifier_prefix if v.cluster_identifier_prefix != null && length(v.cluster_identifier_prefix) > 0 }
}
output "rds_clusters_cluster_members" {
  description = "Map of cluster_members values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.cluster_members if v.cluster_members != null && length(v.cluster_members) > 0 }
}
output "rds_clusters_cluster_resource_id" {
  description = "Map of cluster_resource_id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.cluster_resource_id if v.cluster_resource_id != null && length(v.cluster_resource_id) > 0 }
}
output "rds_clusters_cluster_scalability_type" {
  description = "Map of cluster_scalability_type values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.cluster_scalability_type if v.cluster_scalability_type != null && length(v.cluster_scalability_type) > 0 }
}
output "rds_clusters_copy_tags_to_snapshot" {
  description = "Map of copy_tags_to_snapshot values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.copy_tags_to_snapshot if v.copy_tags_to_snapshot != null }
}
output "rds_clusters_database_insights_mode" {
  description = "Map of database_insights_mode values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.database_insights_mode if v.database_insights_mode != null && length(v.database_insights_mode) > 0 }
}
output "rds_clusters_database_name" {
  description = "Map of database_name values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "rds_clusters_db_cluster_instance_class" {
  description = "Map of db_cluster_instance_class values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.db_cluster_instance_class if v.db_cluster_instance_class != null && length(v.db_cluster_instance_class) > 0 }
}
output "rds_clusters_db_cluster_parameter_group_name" {
  description = "Map of db_cluster_parameter_group_name values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.db_cluster_parameter_group_name if v.db_cluster_parameter_group_name != null && length(v.db_cluster_parameter_group_name) > 0 }
}
output "rds_clusters_db_instance_parameter_group_name" {
  description = "Map of db_instance_parameter_group_name values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.db_instance_parameter_group_name if v.db_instance_parameter_group_name != null && length(v.db_instance_parameter_group_name) > 0 }
}
output "rds_clusters_db_subnet_group_name" {
  description = "Map of db_subnet_group_name values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.db_subnet_group_name if v.db_subnet_group_name != null && length(v.db_subnet_group_name) > 0 }
}
output "rds_clusters_db_system_id" {
  description = "Map of db_system_id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "rds_clusters_delete_automated_backups" {
  description = "Map of delete_automated_backups values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.delete_automated_backups if v.delete_automated_backups != null }
}
output "rds_clusters_deletion_protection" {
  description = "Map of deletion_protection values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.deletion_protection if v.deletion_protection != null }
}
output "rds_clusters_domain" {
  description = "Map of domain values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "rds_clusters_domain_iam_role_name" {
  description = "Map of domain_iam_role_name values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.domain_iam_role_name if v.domain_iam_role_name != null && length(v.domain_iam_role_name) > 0 }
}
output "rds_clusters_enable_global_write_forwarding" {
  description = "Map of enable_global_write_forwarding values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.enable_global_write_forwarding if v.enable_global_write_forwarding != null }
}
output "rds_clusters_enable_http_endpoint" {
  description = "Map of enable_http_endpoint values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.enable_http_endpoint if v.enable_http_endpoint != null }
}
output "rds_clusters_enable_local_write_forwarding" {
  description = "Map of enable_local_write_forwarding values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.enable_local_write_forwarding if v.enable_local_write_forwarding != null }
}
output "rds_clusters_enabled_cloudwatch_logs_exports" {
  description = "Map of enabled_cloudwatch_logs_exports values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.enabled_cloudwatch_logs_exports if v.enabled_cloudwatch_logs_exports != null && length(v.enabled_cloudwatch_logs_exports) > 0 }
}
output "rds_clusters_endpoint" {
  description = "Map of endpoint values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "rds_clusters_engine" {
  description = "Map of engine values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "rds_clusters_engine_lifecycle_support" {
  description = "Map of engine_lifecycle_support values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.engine_lifecycle_support if v.engine_lifecycle_support != null && length(v.engine_lifecycle_support) > 0 }
}
output "rds_clusters_engine_mode" {
  description = "Map of engine_mode values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.engine_mode if v.engine_mode != null && length(v.engine_mode) > 0 }
}
output "rds_clusters_engine_version" {
  description = "Map of engine_version values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "rds_clusters_engine_version_actual" {
  description = "Map of engine_version_actual values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.engine_version_actual if v.engine_version_actual != null && length(v.engine_version_actual) > 0 }
}
output "rds_clusters_final_snapshot_identifier" {
  description = "Map of final_snapshot_identifier values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.final_snapshot_identifier if v.final_snapshot_identifier != null && length(v.final_snapshot_identifier) > 0 }
}
output "rds_clusters_global_cluster_identifier" {
  description = "Map of global_cluster_identifier values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.global_cluster_identifier if v.global_cluster_identifier != null && length(v.global_cluster_identifier) > 0 }
}
output "rds_clusters_hosted_zone_id" {
  description = "Map of hosted_zone_id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.hosted_zone_id if v.hosted_zone_id != null && length(v.hosted_zone_id) > 0 }
}
output "rds_clusters_iam_database_authentication_enabled" {
  description = "Map of iam_database_authentication_enabled values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.iam_database_authentication_enabled if v.iam_database_authentication_enabled != null }
}
output "rds_clusters_iam_roles" {
  description = "Map of iam_roles values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.iam_roles if v.iam_roles != null && length(v.iam_roles) > 0 }
}
output "rds_clusters_iops" {
  description = "Map of iops values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.iops if v.iops != null }
}
output "rds_clusters_kms_key_id" {
  description = "Map of kms_key_id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "rds_clusters_manage_master_user_password" {
  description = "Map of manage_master_user_password values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.manage_master_user_password if v.manage_master_user_password != null }
}
output "rds_clusters_master_password" {
  description = "Map of master_password values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.master_password if v.master_password != null && length(v.master_password) > 0 }
  sensitive   = true
}
output "rds_clusters_master_password_wo" {
  description = "Map of master_password_wo values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.master_password_wo if v.master_password_wo != null && length(v.master_password_wo) > 0 }
  sensitive   = true
}
output "rds_clusters_master_password_wo_version" {
  description = "Map of master_password_wo_version values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.master_password_wo_version if v.master_password_wo_version != null }
}
output "rds_clusters_master_user_secret" {
  description = "Map of master_user_secret values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.master_user_secret if v.master_user_secret != null && length(v.master_user_secret) > 0 }
}
output "rds_clusters_master_user_secret_kms_key_id" {
  description = "Map of master_user_secret_kms_key_id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.master_user_secret_kms_key_id if v.master_user_secret_kms_key_id != null && length(v.master_user_secret_kms_key_id) > 0 }
}
output "rds_clusters_master_username" {
  description = "Map of master_username values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.master_username if v.master_username != null && length(v.master_username) > 0 }
}
output "rds_clusters_monitoring_interval" {
  description = "Map of monitoring_interval values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.monitoring_interval if v.monitoring_interval != null }
}
output "rds_clusters_monitoring_role_arn" {
  description = "Map of monitoring_role_arn values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.monitoring_role_arn if v.monitoring_role_arn != null && length(v.monitoring_role_arn) > 0 }
}
output "rds_clusters_network_type" {
  description = "Map of network_type values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.network_type if v.network_type != null && length(v.network_type) > 0 }
}
output "rds_clusters_performance_insights_enabled" {
  description = "Map of performance_insights_enabled values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.performance_insights_enabled if v.performance_insights_enabled != null }
}
output "rds_clusters_performance_insights_kms_key_id" {
  description = "Map of performance_insights_kms_key_id values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.performance_insights_kms_key_id if v.performance_insights_kms_key_id != null && length(v.performance_insights_kms_key_id) > 0 }
}
output "rds_clusters_performance_insights_retention_period" {
  description = "Map of performance_insights_retention_period values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.performance_insights_retention_period if v.performance_insights_retention_period != null }
}
output "rds_clusters_port" {
  description = "Map of port values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.port if v.port != null }
}
output "rds_clusters_preferred_backup_window" {
  description = "Map of preferred_backup_window values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.preferred_backup_window if v.preferred_backup_window != null && length(v.preferred_backup_window) > 0 }
}
output "rds_clusters_preferred_maintenance_window" {
  description = "Map of preferred_maintenance_window values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.preferred_maintenance_window if v.preferred_maintenance_window != null && length(v.preferred_maintenance_window) > 0 }
}
output "rds_clusters_reader_endpoint" {
  description = "Map of reader_endpoint values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.reader_endpoint if v.reader_endpoint != null && length(v.reader_endpoint) > 0 }
}
output "rds_clusters_region" {
  description = "Map of region values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "rds_clusters_replication_source_identifier" {
  description = "Map of replication_source_identifier values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.replication_source_identifier if v.replication_source_identifier != null && length(v.replication_source_identifier) > 0 }
}
output "rds_clusters_restore_to_point_in_time" {
  description = "Map of restore_to_point_in_time values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => one(v.restore_to_point_in_time) if v.restore_to_point_in_time != null && length(v.restore_to_point_in_time) > 0 }
}
output "rds_clusters_s3_import" {
  description = "Map of s3_import values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => one(v.s3_import) if v.s3_import != null && length(v.s3_import) > 0 }
}
output "rds_clusters_scaling_configuration" {
  description = "Map of scaling_configuration values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => one(v.scaling_configuration) if v.scaling_configuration != null && length(v.scaling_configuration) > 0 }
}
output "rds_clusters_serverlessv2_scaling_configuration" {
  description = "Map of serverlessv2_scaling_configuration values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => one(v.serverlessv2_scaling_configuration) if v.serverlessv2_scaling_configuration != null && length(v.serverlessv2_scaling_configuration) > 0 }
}
output "rds_clusters_skip_final_snapshot" {
  description = "Map of skip_final_snapshot values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.skip_final_snapshot if v.skip_final_snapshot != null }
}
output "rds_clusters_snapshot_identifier" {
  description = "Map of snapshot_identifier values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.snapshot_identifier if v.snapshot_identifier != null && length(v.snapshot_identifier) > 0 }
}
output "rds_clusters_source_region" {
  description = "Map of source_region values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.source_region if v.source_region != null && length(v.source_region) > 0 }
}
output "rds_clusters_storage_encrypted" {
  description = "Map of storage_encrypted values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.storage_encrypted if v.storage_encrypted != null }
}
output "rds_clusters_storage_type" {
  description = "Map of storage_type values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.storage_type if v.storage_type != null && length(v.storage_type) > 0 }
}
output "rds_clusters_tags" {
  description = "Map of tags values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "rds_clusters_tags_all" {
  description = "Map of tags_all values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "rds_clusters_upgrade_rollout_order" {
  description = "Map of upgrade_rollout_order values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.upgrade_rollout_order if v.upgrade_rollout_order != null && length(v.upgrade_rollout_order) > 0 }
}
output "rds_clusters_vpc_security_group_ids" {
  description = "Map of vpc_security_group_ids values across all rds_clusters, keyed the same as var.rds_clusters"
  value       = { for k, v in aws_rds_cluster.rds_clusters : k => v.vpc_security_group_ids if v.vpc_security_group_ids != null && length(v.vpc_security_group_ids) > 0 }
}

