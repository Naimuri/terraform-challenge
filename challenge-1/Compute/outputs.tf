output "Instance_ID" {
	description = "The ID of EC2 Instance"
	value = aws_instance.Host.id
}

output "DB_Instance_ID" {
	description = "The ID of the database instance"
	value = aws_db_instance.HostDB.id
}