variable "rds_clusters" {
  description = <<EOT
Map of rds_clusters, attributes below
Required:
    - engine
Optional:
    - allocated_storage
    - allow_major_version_upgrade
    - apply_immediately
    - auto_minor_version_upgrade
    - availability_zones
    - backtrack_window
    - backup_retention_period
    - ca_certificate_identifier
    - cluster_identifier
    - cluster_identifier_prefix
    - cluster_members
    - cluster_scalability_type
    - copy_tags_to_snapshot
    - database_insights_mode
    - database_name
    - db_cluster_instance_class
    - db_cluster_parameter_group_name
    - db_instance_parameter_group_name
    - db_subnet_group_name
    - db_system_id
    - delete_automated_backups
    - deletion_protection
    - domain
    - domain_iam_role_name
    - enable_global_write_forwarding
    - enable_http_endpoint
    - enable_local_write_forwarding
    - enabled_cloudwatch_logs_exports
    - engine_lifecycle_support
    - engine_mode
    - engine_version
    - final_snapshot_identifier
    - global_cluster_identifier
    - iam_database_authentication_enabled
    - iam_roles
    - iops
    - kms_key_id
    - manage_master_user_password
    - master_password
    - master_password_wo
    - master_password_wo_version
    - master_user_secret_kms_key_id
    - master_username
    - monitoring_interval
    - monitoring_role_arn
    - network_type
    - performance_insights_enabled
    - performance_insights_kms_key_id
    - performance_insights_retention_period
    - port
    - preferred_backup_window
    - preferred_maintenance_window
    - region
    - replication_source_identifier
    - skip_final_snapshot
    - snapshot_identifier
    - source_region
    - storage_encrypted
    - storage_type
    - tags
    - tags_all
    - vpc_security_group_ids
    - restore_to_point_in_time (block):
        - restore_to_time (optional)
        - restore_type (optional)
        - source_cluster_identifier (optional)
        - source_cluster_resource_id (optional)
        - use_latest_restorable_time (optional)
    - s3_import (block):
        - bucket_name (required)
        - bucket_prefix (optional)
        - ingestion_role (required)
        - source_engine (required)
        - source_engine_version (required)
    - scaling_configuration (block):
        - auto_pause (optional)
        - max_capacity (optional)
        - min_capacity (optional)
        - seconds_before_timeout (optional)
        - seconds_until_auto_pause (optional)
        - timeout_action (optional)
    - serverlessv2_scaling_configuration (block):
        - max_capacity (required)
        - min_capacity (required)
        - seconds_until_auto_pause (optional)
EOT

  type = map(object({
    engine                                = string
    global_cluster_identifier             = optional(string)
    iam_database_authentication_enabled   = optional(bool)
    iam_roles                             = optional(set(string))
    iops                                  = optional(number)
    kms_key_id                            = optional(string)
    manage_master_user_password           = optional(bool)
    master_password                       = optional(string)
    master_password_wo                    = optional(string)
    master_password_wo_version            = optional(number)
    master_user_secret_kms_key_id         = optional(string)
    master_username                       = optional(string)
    monitoring_interval                   = optional(number)
    monitoring_role_arn                   = optional(string)
    final_snapshot_identifier             = optional(string)
    network_type                          = optional(string)
    performance_insights_kms_key_id       = optional(string)
    performance_insights_retention_period = optional(number)
    port                                  = optional(number)
    preferred_backup_window               = optional(string)
    preferred_maintenance_window          = optional(string)
    region                                = optional(string)
    replication_source_identifier         = optional(string)
    skip_final_snapshot                   = optional(bool)
    snapshot_identifier                   = optional(string)
    source_region                         = optional(string)
    storage_encrypted                     = optional(bool)
    storage_type                          = optional(string)
    tags                                  = optional(map(string))
    performance_insights_enabled          = optional(bool)
    tags_all                              = optional(map(string))
    engine_version                        = optional(string)
    engine_lifecycle_support              = optional(string)
    allocated_storage                     = optional(number)
    allow_major_version_upgrade           = optional(bool)
    apply_immediately                     = optional(bool)
    auto_minor_version_upgrade            = optional(bool)
    availability_zones                    = optional(set(string))
    backtrack_window                      = optional(number)
    backup_retention_period               = optional(number)
    ca_certificate_identifier             = optional(string)
    cluster_identifier                    = optional(string)
    cluster_identifier_prefix             = optional(string)
    cluster_members                       = optional(set(string))
    cluster_scalability_type              = optional(string)
    copy_tags_to_snapshot                 = optional(bool)
    engine_mode                           = optional(string)
    database_insights_mode                = optional(string)
    db_cluster_instance_class             = optional(string)
    db_cluster_parameter_group_name       = optional(string)
    db_instance_parameter_group_name      = optional(string)
    db_subnet_group_name                  = optional(string)
    db_system_id                          = optional(string)
    delete_automated_backups              = optional(bool)
    deletion_protection                   = optional(bool)
    domain                                = optional(string)
    domain_iam_role_name                  = optional(string)
    enable_global_write_forwarding        = optional(bool)
    enable_http_endpoint                  = optional(bool)
    enable_local_write_forwarding         = optional(bool)
    enabled_cloudwatch_logs_exports       = optional(set(string))
    database_name                         = optional(string)
    vpc_security_group_ids                = optional(set(string))
    restore_to_point_in_time = optional(object({
      restore_to_time            = optional(string)
      restore_type               = optional(string)
      source_cluster_identifier  = optional(string)
      source_cluster_resource_id = optional(string)
      use_latest_restorable_time = optional(bool)
    }))
    s3_import = optional(object({
      bucket_name           = string
      bucket_prefix         = optional(string)
      ingestion_role        = string
      source_engine         = string
      source_engine_version = string
    }))
    scaling_configuration = optional(object({
      auto_pause               = optional(bool)
      max_capacity             = optional(number)
      min_capacity             = optional(number)
      seconds_before_timeout   = optional(number)
      seconds_until_auto_pause = optional(number)
      timeout_action           = optional(string)
    }))
    serverlessv2_scaling_configuration = optional(object({
      max_capacity             = number
      min_capacity             = number
      seconds_until_auto_pause = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.backup_retention_period == null || (v.backup_retention_period <= 35)
      )
    ])
    error_message = "must be at most 35"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.backtrack_window == null || (v.backtrack_window >= 0 && v.backtrack_window <= 259200)
      )
    ])
    error_message = "must be between 0 and 259200"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.master_user_secret_kms_key_id == null || (length(v.master_user_secret_kms_key_id) >= 1)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.master_user_secret_kms_key_id == null || (length(v.master_user_secret_kms_key_id) <= 2048)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) > 2048]"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.scaling_configuration == null || (v.scaling_configuration.seconds_before_timeout == null || (v.scaling_configuration.seconds_before_timeout >= 60 && v.scaling_configuration.seconds_before_timeout <= 600))
      )
    ])
    error_message = "must be between 60 and 600"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.scaling_configuration == null || (v.scaling_configuration.seconds_until_auto_pause == null || (v.scaling_configuration.seconds_until_auto_pause >= 300 && v.scaling_configuration.seconds_until_auto_pause <= 86400))
      )
    ])
    error_message = "must be between 300 and 86400"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.serverlessv2_scaling_configuration == null || (v.serverlessv2_scaling_configuration.min_capacity >= 0 && v.serverlessv2_scaling_configuration.min_capacity <= 256)
      )
    ])
    error_message = "must be between 0 and 256"
  }
  validation {
    condition = alltrue([
      for k, v in var.rds_clusters : (
        v.serverlessv2_scaling_configuration == null || (v.serverlessv2_scaling_configuration.seconds_until_auto_pause == null || (v.serverlessv2_scaling_configuration.seconds_until_auto_pause >= 300 && v.serverlessv2_scaling_configuration.seconds_until_auto_pause <= 86400))
      )
    ])
    error_message = "must be between 300 and 86400"
  }
  # Note: 24 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

