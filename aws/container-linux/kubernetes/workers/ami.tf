locals {
  # Pick a CoreOS Container Linux derivative
  # coreos-stable -> Container Linux AMI
  # flatcar-stable -> Flatcar Linux AMI
  ami_id = "ami-004141f8e687abcbe"
  flavor  = split("-", var.os_image)[0]
  channel = split("-", var.os_image)[1]
}
