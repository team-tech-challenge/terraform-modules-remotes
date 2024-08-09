resource "aws_db_instance" "this" {
  count                           = var.create_db_instance ? 1 : 0
  identifier                      = var.db_instance_identifier
  engine                          = var.db_engine
  engine_version                  = var.db_engine_version
  instance_class                  = var.db_instance_class
  allocated_storage               = var.db_allocated_storage
  storage_type                    = var.db_storage_type
  storage_encrypted               = var.db_storage_encrypted
  multi_az                        = var.db_multi_az
  publicly_accessible             = var.db_publicly_accessible
  parameter_group_name            = var.db_parameter_group_name
  db_subnet_group_name            = var.db_subnet_group_name
  vpc_security_group_ids          = [var.db_security_group_id]
  db_name                         = var.db_name
  username                        = var.db_username
  password                        = random_password.this[0].result
  backup_retention_period         = var.db_backup_retention_period
  backup_window                   = var.db_backup_window
  maintenance_window              = var.db_maintenance_window
  skip_final_snapshot             = var.db_skip_final_snapshot
  final_snapshot_identifier       = var.db_final_snapshot_identifier
  performance_insights_enabled    = var.db_performance_insights_enabled
  performance_insights_kms_key_id = var.db_performance_insights_kms_key_id
  deletion_protection             = var.db_deletion_protection
  auto_minor_version_upgrade      = var.db_auto_minor_version_upgrade
  tags                            = var.db_tags
}

resource "random_password" "this" {
  count            = var.create_db_instance ? 1 : 0
  length           = 21
  special          = true
  override_special = "!@#$%^&*()_+"
}
