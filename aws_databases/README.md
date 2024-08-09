 # Remote Module: aws_databases

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements 

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.1.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.43.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_db_instance"></a> [create\_db\_instance](#input\_create\_db\_instance) | Create a new RDS instance | `bool` | `false` | no |
| <a name="input_db_allocated_storage"></a> [db\_allocated\_storage](#input\_db\_allocated\_storage) | The amount of storage to allocate | `number` | `null` | no |
| <a name="input_db_auto_minor_version_upgrade"></a> [db\_auto\_minor\_version\_upgrade](#input\_db\_auto\_minor\_version\_upgrade) | Whether to enable auto minor version upgrade | `bool` | `true` | no |
| <a name="input_db_backup_retention_period"></a> [db\_backup\_retention\_period](#input\_db\_backup\_retention\_period) | The number of days to retain backups for | `number` | `null` | no |
| <a name="input_db_backup_window"></a> [db\_backup\_window](#input\_db\_backup\_window) | The window in which to perform backups | `string` | `"05:00-05:30"` | no |
| <a name="input_db_deletion_protection"></a> [db\_deletion\_protection](#input\_db\_deletion\_protection) | Whether to enable deletion protection | `bool` | `true` | no |
| <a name="input_db_engine"></a> [db\_engine](#input\_db\_engine) | The database engine to use.One of mysql, postgres, oracle-se1, oracle-se2, oracle-se, oracle-ee, sqlserver-ee, sqlserver-se, sqlserver-ex, sqlserver-web, aurora, aurora-mysql, aurora-postgresql, mariadb | `string` | `null` | no |
| <a name="input_db_engine_version"></a> [db\_engine\_version](#input\_db\_engine\_version) | The version of the database engine to use | `string` | `null` | no |
| <a name="input_db_final_snapshot_identifier"></a> [db\_final\_snapshot\_identifier](#input\_db\_final\_snapshot\_identifier) | The name of the final snapshot | `string` | `null` | no |
| <a name="input_db_instance_class"></a> [db\_instance\_class](#input\_db\_instance\_class) | The instance type to use | `string` | `null` | no |
| <a name="input_db_instance_identifier"></a> [db\_instance\_identifier](#input\_db\_instance\_identifier) | The name of the RDS instance | `string` | `null` | no |
| <a name="input_db_maintenance_window"></a> [db\_maintenance\_window](#input\_db\_maintenance\_window) | The window in which to perform maintenance | `string` | `"Sat:07:00-Sat:08:00"` | no |
| <a name="input_db_multi_az"></a> [db\_multi\_az](#input\_db\_multi\_az) | Whether to use multi-AZ | `bool` | `false` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | The name of the database to create | `string` | `null` | no |
| <a name="input_db_parameter_group_name"></a> [db\_parameter\_group\_name](#input\_db\_parameter\_group\_name) | The name of the parameter group to use | `string` | `null` | no |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | The password to use | `string` | `null` | no |
| <a name="input_db_performance_insights_enabled"></a> [db\_performance\_insights\_enabled](#input\_db\_performance\_insights\_enabled) | Whether to enable performance insights | `bool` | `false` | no |
| <a name="input_db_performance_insights_kms_key_id"></a> [db\_performance\_insights\_kms\_key\_id](#input\_db\_performance\_insights\_kms\_key\_id) | The KMS key ID to use for performance insights | `string` | `null` | no |
| <a name="input_db_publicly_accessible"></a> [db\_publicly\_accessible](#input\_db\_publicly\_accessible) | Whether the RDS instance is publicly accessible | `bool` | `false` | no |
| <a name="input_db_security_group_id"></a> [db\_security\_group\_id](#input\_db\_security\_group\_id) | The ID of the security group to use | `string` | `null` | no |
| <a name="input_db_skip_final_snapshot"></a> [db\_skip\_final\_snapshot](#input\_db\_skip\_final\_snapshot) | Whether to skip the final snapshot | `bool` | `null` | no |
| <a name="input_db_storage_encrypted"></a> [db\_storage\_encrypted](#input\_db\_storage\_encrypted) | Whether to encrypt the storage | `bool` | `false` | no |
| <a name="input_db_storage_type"></a> [db\_storage\_type](#input\_db\_storage\_type) | The type of storage to use | `string` | `null` | no |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | The name of the subnet group to use | `string` | `null` | no |
| <a name="input_db_tags"></a> [db\_tags](#input\_db\_tags) | A map of tags to add to the RDS instance | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | The username to use | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_password"></a> [db\_password](#output\_db\_password) | The password for the database user |
| <a name="output_rds_engine"></a> [rds\_engine](#output\_rds\_engine) | The database engine for the RDS instance |
| <a name="output_rds_engine_version"></a> [rds\_engine\_version](#output\_rds\_engine\_version) | The database engine version for the RDS instance |
| <a name="output_rds_instance_address"></a> [rds\_instance\_address](#output\_rds\_instance\_address) | The address of the RDS instance |
| <a name="output_rds_instance_password"></a> [rds\_instance\_password](#output\_rds\_instance\_password) | The password for the RDS instance |
| <a name="output_rds_instance_port"></a> [rds\_instance\_port](#output\_rds\_instance\_port) | The port for the RDS instance |
| <a name="output_rds_instance_user"></a> [rds\_instance\_user](#output\_rds\_instance\_user) | The username for the RDS instance |
| <a name="output_rds_name"></a> [rds\_name](#output\_rds\_name) | The name of the RDS instance |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

