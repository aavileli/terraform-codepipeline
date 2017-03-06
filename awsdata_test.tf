provider "aws" {
  region = "ap-southeast-2"
}

data "aws_ecs_cluster" "ecs" {
  cluster_name = "ECS-Test-ECS-IB3UMN9F6XBU-ECSCluster-I9TRCTQQZ9LA"
}

output "task_running" {
  value = "${data.aws_ecs_cluster.ecs.running_tasks_count}"
}
