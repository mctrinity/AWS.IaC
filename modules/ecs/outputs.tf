output "ecs_cluster_id" {
  value       = aws_ecs_cluster.ecs_cluster.id
  description = "The ECS cluster ID"
}

output "ecs_service_name" {
  value       = aws_ecs_service.ecs_service.name
  description = "The name of the ECS service"
}

output "ecs_task_definition_arn" {
  value       = aws_ecs_task_definition.ecs_task.arn
  description = "The ARN of the ECS task definition"
}
