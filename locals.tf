locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "terraform-application-auto-scaling"
    CreatedAt = "February-2023"
    ManagedBy = "Terraform"
    Owner     = "Diogo Fiaminghi"
    Service   = "application-auto-scaling"
  }
}