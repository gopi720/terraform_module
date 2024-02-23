resource "aws_key_pair" "key" {
  key_name = "anitha_key"
  public_key = var.key_pair
}
resource "aws_instance" "anitha_ins" {
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  ami = var.ami
  key_name = aws_key_pair.key.key_name
  associate_public_ip_address = true
}