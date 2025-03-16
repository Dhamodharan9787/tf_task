resource "aws_security_group" "web_sg" {
    name = "web_sg"
    dynamic "ingress"{
        for_each = var.ports
        content {
          from_port = ingress.value
          to_port = ingress.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
    }
    }  