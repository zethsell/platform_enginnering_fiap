terraform {
  backend "s3" {
    bucket = "lab-fiap-SUA TURMA-SEU RM"
    key    = "teste"
    region = "us-east-1"
  }
}

module "tb_fiap" {
  LOAD_BALANCE_NODES = 3
  source             = "./modules"
}

