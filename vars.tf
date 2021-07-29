variable "dbname" {
  type          = string
  description   = "Nombre de la base de datos"
}
variable "dbroll" {
  type          = list
  default       = ["db_accessadmin", "db_backupoperator", "db_datareader", "db_datawriter", "db_ddladmin", "db_denydatareader", "db_denydatawriter", "db_owner", "db_securityadmin"]
  description   = "Permisos"
}
variable "sqlpassword" {
    type        = string
    description = "Password SQL Server"
}
variable "sqluser" {
    type        = string
    description = "User SQL Server"
}
variable "sqlhost" {
    type        = string
    description = "Host SQL Server"
}
variable "mmsqldbloginname" {
    type        = string
    description = "Nuevo User"
}
variable "mmsqldbloginpass" {
    type        = string
    description = "Nuevo user password"
}