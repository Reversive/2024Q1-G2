module "network" {
  source      = "./modules/network"
  vpc_name    = lower(var.vpc_name)
  vpc_cidr    = var.vpc_cidr
  public_cidr = var.public_cidr
  public_az   = lower(var.public_az)
}

module "database" {
  source          = "./modules/database"
  table_names     = var.table_names
  db_billing_mode = upper(var.db_billing_mode)
}

module "application" {
  source     = "./modules/application"
  account_id = var.account_id
  region     = var.aws_region
}

module "compute" {
  source          = "./modules/compute"
  account_id      = var.account_id
  region          = var.aws_region
  api_gateway_url = module.application.api_gateway_url
  subnet_ids      = [module.network.public_subnet_id]
}