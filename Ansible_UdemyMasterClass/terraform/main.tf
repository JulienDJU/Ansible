provider "aws" {
    region = "eu-west-2"
    access_key = "your_key"
    secret_key = "your_secret_key"
}

resource "aws_instance" "ec2" {
    ami = ""
    count = 10
    instance_type = "t2.micro"
    key_name = ""
    security = ["ansible-SG"]
    tags = {
        Name = "Ansible
    }
    /*
    privisoner "local-exec" {
        command = "sleep 120; ANSIBLE_HOST_KEY_CHEKING=False ansible-playbook --private-key "" -i ${aws_instance.ec2.public_ip}, playbook.yaml"
    }
    */
}