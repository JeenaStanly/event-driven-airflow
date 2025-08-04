resource "aws_instance" "airflow_server" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true

  tags = {
    Name        = "airflow-server"
    Environment = "dev"
    Owner       = "jeena"
    Project     = "event-driven-airflow"
  }

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
    iops        = 3000
    encrypted   = false
  }

  # Optional: uncomment below to bootstrap Airflow
  # user_data = file("${path.module}/scripts/bootstrap-airflow.sh")
}
