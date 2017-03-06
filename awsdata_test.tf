provider "aws" {
  region = "us-east-1"
}

data "aws_ecs_cluster" "ecs" {
  cluster_name = "ash-test"
}

output "task_running" {
  value = "${data.aws_ecs_cluster.ecs.running_tasks_count}"
}
