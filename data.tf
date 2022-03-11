data "aws_iam_role" "pipeline_role" {
  name = "nbCodeCommitUser"
}

data "aws_iam_role" "ecs-task" {
  name = "ecsTaskExecutionRole"
}