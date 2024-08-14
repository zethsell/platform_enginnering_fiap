terraform {
  backend "s3" {
    bucket = "base-config-351529"
    key    = "teste"
    region = "us-east-1"
  }
}

module "tb_fiap" {
  LOAD_BALANCE_NODES = 3
  source             = ".././modules"
}

