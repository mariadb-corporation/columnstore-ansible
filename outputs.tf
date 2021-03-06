resource "local_file" "AnsibleInventory" {
  content = templatefile("terraform_includes/inventory.tmpl",
    {
      publicdns1  = aws_instance.mcs1.public_dns,
      publicdns2  = aws_instance.mcs2.public_dns,
      publicdns3  = aws_instance.mcs3.public_dns,
      publicdns4  = aws_instance.mx1.public_dns,
      publicdns5  = aws_instance.mx2.public_dns,
      privatedns1 = aws_instance.mcs1.private_dns,
      privatedns2 = aws_instance.mcs2.private_dns,
      privatedns3 = aws_instance.mcs3.private_dns,
      privatedns4 = aws_instance.mx1.private_dns,
      privatedns5 = aws_instance.mx2.private_dns,
    }
  )
  filename = "inventory/hosts"
}

resource "local_file" "AnsibleVariables" {
  content = templatefile("terraform_includes/all.tmpl",
    {
      admin_pass               = var.admin_pass,
      admin_user               = var.admin_user,
      aws_access_key           = var.aws_access_key,
      aws_region               = var.aws_region,
      aws_secret_key           = var.aws_secret_key,
      aws_zone                 = var.aws_zone,
      cej_pass                 = var.cej_pass,
      cej_user                 = var.cej_user,
      cmapi_key                = var.cmapi_key
      elasticache_endpoint     = aws_elasticache_cluster.mcscache.cache_nodes.0.address,
      elasticache_engine       = var.elasticache_engine,
      elasticache_port         = var.elasticache_port,
      mariadb_enterprise_token = var.mariadb_enterprise_token,
      mariadb_version          = var.mariadb_version,
      maxscale_pass            = var.maxscale_pass,
      maxscale_user            = var.maxscale_user,
      maxscale_version         = var.maxscale_version,
      pcs_pass                 = var.pcs_pass,
      privateip1               = aws_instance.mcs1.private_ip,
      privateip2               = aws_instance.mcs2.private_ip,
      privateip3               = aws_instance.mcs3.private_ip,
      privateip4               = aws_instance.mx1.private_ip,
      privateip5               = aws_instance.mx2.private_ip,
      prometheus_exporter      = var.prometheus_exporter,
      reboot                   = var.reboot,
      repli_pass               = var.repli_pass,
      repli_user               = var.repli_user,
      s3_active                = var.s3_active,
      s3_bucket                = aws_s3_bucket.s3_bucket[0].id,
      s3_domain                = var.s3_domain,
    }
  )
  filename = "inventory/group_vars/all.yml"
}

resource "local_file" "AnsibleConfig" {
  content = templatefile("terraform_includes/ansible.tmpl",
    {
      ssh_key_file = var.ssh_key_file
    }
  )
  filename = "ansible.cfg"
}
