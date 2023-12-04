terraform {
    required_providers {
        snowflake = {
            source  = "Snowflake-Labs/snowflake"
            version = "0.76"
        }
    }
}
provider "snowflake" {
    account = var.snowflake_user.account
    username = var.snowflake_user.user_name
    password = var.snowflake_user.user_password

}
resource "snowflake_database" "database" {
  name      = "poc1_terraform_db"
}
resource "snowflake_schema" "schema" {
  database  = snowflake_database.database.name
  name      = "poc1_terraform_schema" 
  depends_on = [ snowflake_database.database ]
}
resource "snowflake_table" "table" {
  database  = snowflake_database.database.name
  schema    = snowflake_schema.schema.name
  name      = "poc1_terraform_table1"
  depends_on = [ snowflake_database.database ]
  column {
    name     = "id2"
    type     = "int"
  }
  column {
    name     = "name2"
    type     = "text"
  }

}