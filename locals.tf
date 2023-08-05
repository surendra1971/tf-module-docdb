# Whenever you have some common fields or anything which is highly used, you can consider that in locals and can call it on your need

locals {
    DOCDB_USERNAME  = jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["DOCDB_USERNAME"]
    DOCDB_PASSWORD  = jsondecode(data.aws_secretsmanager_secret_version.secret_version.secret_string)["DOCDB_PASSWORD"]
}