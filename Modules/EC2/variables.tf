variable "instance_count" {
  type        = number
  description = "Number of Created Instance"
}

variable "instance_type"{
    type = string
    description = "Instance Type"
}

variable "enable_public_subnet"{
    type = bool
    description = "Enable Public Subnet"
}

variable "vpc_id"{
    type = string
    description = "VPC ID"
}

variable "key_name" {
  type        = string
  description = "Key Name"
}

