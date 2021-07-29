terraform {
  required_providers {
    mssql = {
      source = "embracesbs/mssql"
      version = "0.2.4-alpha"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.6.0"
    }
  }
}

provider "mssql" {
  password  = "2014Charango$$"
  url       = "localhost"
  user_name = "sa"
}

resource "mssql_database" "server" {
    name          = "SARASA2"
    recovery_mode = "FULL"
    collation     = "SQL_Latin1_General_CP1_CI_AS"
}

resource "mssql_login" "server" {
  name      = "pepito"
  password  = "pistolero"
}

resource "mssql_user" "server" {
  name      = mssql_login.server.name
  database  = mssql_database.server.name
}

resource "mssql_rolemapping" "server" {
  user = mssql_user.server.name
  database = mssql_user.server.database
  role = "db_owner"
  # role = "db_datareader"
}