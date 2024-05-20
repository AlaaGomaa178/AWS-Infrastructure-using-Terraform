resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = "redis-subnet-group"
  subnet_ids = [
    module.network_module.subnets["private_subnet_I"].id, 
    module.network_module.subnets["private_subnet_II"].id
  ]

  tags = {
    Name = "${var.common_resource_name}_Redis_Elasticache_Subnet_Group"
  }
}

resource "aws_elasticache_cluster" "redis_elastic_cluster" {
  cluster_id           = "cluster"
  engine               = "redis"
  node_type            = "cache.t3.micro"
  num_cache_nodes      = 1
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.redis_subnet_group.name
}
