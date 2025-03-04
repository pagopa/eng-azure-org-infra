#
# general
#

env_short      = "p"
env            = "prod"
prefix         = "org"
location       = "westeurope"
location_short = "weu"

log_analytics_cluster = {
  sku_size = 500
}

tags = {
  CreatedBy   = "Terraform"
  Environment = "PROD"
  Owner       = "Cloud Strategy and Governance"
  Source      = "https://github.com/pagopa/eng-azure-org-infra"
  CostCenter  = "TS100 - Technology"
}
