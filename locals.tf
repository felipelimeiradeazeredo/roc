locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "Challenge ROC"
    CreatedAt = "2021-10-29"
    ManagedBy = "Terraform"
    Owner     = "Felipe Limeira de Azeredo"
    Service   = "Auto Scaling App"
  }
}