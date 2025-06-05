output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.subnet1.id
}

output "eks_cluster_name" {
  value = aws_eks_cluster.k8s.name
}