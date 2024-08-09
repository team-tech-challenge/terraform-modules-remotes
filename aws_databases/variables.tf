variable "create_db_instance" {
  description = "Create a new RDS instance"
  type        = bool
  default     = false
}

variable "db_instance_identifier" {
  description = "The name of the RDS instance"
  type        = string
  default     = null
}

variable "db_manage_master_user_password" {
  description = "Whether to manage the master user password"
  type        = bool
  default     = true
}

variable "db_engine" {
  description = "The database engine to use.One of mysql, postgres, oracle-se1, oracle-se2, oracle-se, oracle-ee, sqlserver-ee, sqlserver-se, sqlserver-ex, sqlserver-web, aurora, aurora-mysql, aurora-postgresql, mariadb"
  type        = string
  default     = null
}

variable "db_engine_version" {
  description = "The version of the database engine to use"
  type        = string
  default     = null
}

variable "db_instance_class" {
  description = "The instance type to use"
  type        = string
  default     = null
}

variable "db_allocated_storage" {
  description = "The amount of storage to allocate"
  type        = number
  default     = null
}

variable "db_storage_type" {
  description = "The type of storage to use"
  type        = string
  default     = null
}

variable "db_storage_encrypted" {
  description = "Whether to encrypt the storage"
  type        = bool
  default     = false
}

variable "db_multi_az" {
  description = "Whether to use multi-AZ"
  type        = bool
  default     = false
}

variable "db_publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = false
}

variable "db_subnet_group_name" {
  description = "The name of the subnet group to use"
  type        = string
  default     = null
}

variable "db_security_group_id" {
  description = "The ID of the security group to use"
  type        = string
  default     = null
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
  default     = null
}

variable "db_username" {
  description = "The username to use"
  type        = string
  default     = null
}

variable "db_password" {
  description = "The password to use"
  type        = string
  default     = null
}

variable "db_backup_retention_period" {
  description = "The number of days to retain backups for"
  type        = number
  default     = null
}

variable "db_backup_window" {
  description = "The window in which to perform backups"
  type        = string
  default     = "05:00-05:30"
}


variable "db_maintenance_window" {
  description = "The window in which to perform maintenance"
  type        = string
  default     = "Sat:07:00-Sat:08:00"
}

variable "db_skip_final_snapshot" {
  description = "Whether to skip the final snapshot"
  type        = bool
  default     = null
}

variable "db_final_snapshot_identifier" {
  description = "The name of the final snapshot"
  type        = string
  default     = null
}

variable "db_tags" {
  description = "A map of tags to add to the RDS instance"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "db_parameter_group_name" {
  description = "The name of the parameter group to use"
  type        = string
  default     = null
}

variable "db_performance_insights_enabled" {
  description = "Whether to enable performance insights"
  type        = bool
  default     = false
}

variable "db_performance_insights_kms_key_id" {
  description = "The KMS key ID to use for performance insights"
  type        = string
  default     = null
}


variable "db_deletion_protection" {
  description = "Whether to enable deletion protection"
  type        = bool
  default     = true
}

variable "db_auto_minor_version_upgrade" {
  description = "Whether to enable auto minor version upgrade"
  type        = bool
  default     = true
}

