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
