data "aws_iam_role" "pipeline_role" {
  name = "nbCodeCommitUser" #no chanages:
}

data "aws_iam_role" "ecs-task" {
  name = "ecsTaskExecutionRole"
}