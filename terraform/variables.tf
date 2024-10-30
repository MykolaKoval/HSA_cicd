variable "ami" {
  type        = string
  description = "Amazon Linux 2"
  default     = "ami-0ddc798b3f1a5117e"
}
variable "key_name" {
  type        = string
  description = "Key Pair name"
  default     = "devops"
}
variable "vpc_sg" {
  type        = string
  description = "Default Security Group"
  default     = "sg-ed0b409f"
}