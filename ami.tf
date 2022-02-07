resource "aws_ami" "aws_vpc" {
  name                = "terraform-example"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-0cfdd51d401da54d1"
    volume_size = 8
  }
}
