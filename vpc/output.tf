output private_subnets {
    value = module.vpc.private_subnets
}

output pablic_subnets {
    value = module.vpc.public_subnets
}