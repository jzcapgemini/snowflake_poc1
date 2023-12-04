variable "snowflake_user" {
  type = object({
    user_name     = string,
    user_password = string
  })
  default = {
    user_name = "jzaczek",
    user_password = "Skyline69!"
  }
}

