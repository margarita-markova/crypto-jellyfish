variable "slave_count" {
  description = "Count of initial geth slaves"
  default     = 2
}

variable "ssh_user" {
  type = string
  default = "m4rksuree"
}

variable "ssh_public_key" {
  type        = string
  description = "So... it is safe, guys: https://security.stackexchange.com/questions/150540/is-it-completely-safe-to-publish-an-ssh-public-key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8lCbxT/67oRJU0Mzv0Kk9vomd8l1V1IrfoiCdJs/RLXQ9sBpzh65RjWKvuycStb+2vyVwKPxJlPgV3yYITFQGLHVvHc+e7B65+S9u8fQERO0HgvIcIcRvvtLxvgC4I9TnruzmDjYV+qAJwWyrUYSVB9ORRovE9s9pWFg/X+V7fc0eQX1uTigu5nbPcNrN1L3iJDoE1zgeAOiAsQTMrMGUCZtv60RULT1uQBeuZoeyCJAVQwVMQpbeLKA/TztbniNgI0Tw0cqW7AXUOYsTIH3Figgpp32mA3522Jq7xi8aSXDAlPvMYlIg7Pt6MF2Ltpx1NajrVzJRV7X37l0klmuV m4rksuree@m4rksuree-HP-ProBook-450-G5"
}

variable "auto_ssh_user" {
  type = string
  default = "jenkins"
}

variable "auto_ssh_public_key" {
  type = "string"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxz/ZIiKxt8tHueqd6AAd9xQihf289t35weeedpVHQ+H5Z0YV9oGU2QULW3h/OuZgthxvmcPPrNW04OS+zxVHAgJ+YPj0txS1XlkqtBFAXf+SyK3KYuAbFwTVYMlqO1QDHR/xM4zWjet1VoluyJYbMCyCn7ldxPxOZydAZnyoKAbW1EFL0+ZhV1VVcQLpbAHBvIBvb/K9fVJBi5M3cFKIVvMP6FUrQRUMdtt0nUf2iGA5q3FFvp4sP1Wp+gIglrbqSgfg/CRAbf8b134rM1Ekb1Kai/uV/Gf5tajYiqmiGkOw9Ax/IBmPPXcM1WbLWc+ItiI9PkE8cIeAAWMrfVgJH jenkins@jenkins"
}
