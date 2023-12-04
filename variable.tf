variable "snowflake_user" {
  type = object({
    user_name     = string,
    user_password = string,
    account = string
  })
  default = {
    user_name = "jzaczek",
    user_password = "Skyline69!",
    account = "fusvubb-ol16375"
  }
}

