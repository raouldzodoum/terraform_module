module "my_vpc" {
    source = "../modules/vpc"
    vpc_cidr = "192.167.0.0/16"
    tenancy  =   "default"
    vpc_id =  "${module.my_vpc.vpc_id}"
    subnet_cidr = "192.167.0.0/24"
}

module "my_ec2" {
    source = "../modules/ec2"
    ec2_count = "1"
    ami_id =  "ami-0bb84b8ffd87024d8"
    instance_type = "t2.medium"
    subnet_id = "${module.my_vpc.subnet_id}"
  
}