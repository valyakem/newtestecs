data "aws_iam_role" "pipeline_role" {
  name = "codepipeline-role"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

data "aws_iam_role" "ecs-task" {
  name = "ecsTaskExecutionRole"
}