#### Providers ####
provider "consul" {
  address = "consul"
  datacenter = "DC1"
}

provider "aws" {
  region = "${var.aws_region}"
}

#### Resources ####
resource "aws_instance" "test" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${consul_keys.input.var.size}"
}

resource "consul_keys" "test" {
  key {
    name = "id"
    path = "tf_test/id"
    value = "${aws_instance.test.id}"
    delete = true
  }
  key {
    name = "address"
    path = "tf_test/public_dns"
    value = "${aws_instance.test.public_dns}"
    delete = true
  }
}
