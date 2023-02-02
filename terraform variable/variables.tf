variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-2"
}
variable "security group" {
    type = list
    default = ["sg-4525", "sg-4567", "sg-23421"]
}
variable "AMIS" {
    type = map
    default = {
        ap-south-1 = "ami-0f2e255ec956ade7f"
        us-east-1 = "ami-0b0ea68c435eb488d"
        us-west-1 = "ami-0454207e5367abf01"
    }
}