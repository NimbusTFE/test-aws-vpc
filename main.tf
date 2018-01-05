//--------------------------------------------------------------------
// Variables
variable "vpc_azs" {}
variable "vpc_cidr" {}

//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "roger-ptfe.hashidemos.io/SolutionsEngineering/vpc/aws"
  version = "1.1.0"

  azs = "${var.vpc_azs}"
  cidr = "${var.vpc_cidr}"
}
