terraform {
  backend "s3" {
      bucket = "terraform-state-ubdkzlusjyivfp2fmjjyjipfnq09d1eevmcwurso996w2"
      key = "terraform/state"
      region = "us-west-2"
  }
}

resource "aws_instance" "Instance-nraj-b" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.micro"
      tags = {
        Name = "Instance-nraj-b"
      }
      lifecycle {
        ignore_changes = [ami]
      }
}

resource "aws_iam_user" "Instance-nraj-b_iam" {
      name = "Instance-nraj-b_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-nraj-b_iam_policy_attachment0" {
      user = aws_iam_user.Instance-nraj-b_iam.name
      policy_arn = aws_iam_policy.Instance-nraj-b_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-nraj-b_iam_policy0" {
      name = "Instance-nraj-b_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-nraj-b_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-nraj-b_iam_access_key" {
      user = aws_iam_user.Instance-nraj-b_iam.name
}

resource "aws_instance" "Instance-nraj-a" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.micro"
      tags = {
        Name = "Instance-nraj-a"
      }
      lifecycle {
        ignore_changes = [ami]
      }
}

resource "aws_iam_user" "Instance-nraj-a_iam" {
      name = "Instance-nraj-a_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-nraj-a_iam_policy_attachment0" {
      user = aws_iam_user.Instance-nraj-a_iam.name
      policy_arn = aws_iam_policy.Instance-nraj-a_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-nraj-a_iam_policy0" {
      name = "Instance-nraj-a_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-nraj-a_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-nraj-a_iam_access_key" {
      user = aws_iam_user.Instance-nraj-a_iam.name
}

resource "aws_instance" "Instance-nraj-c" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.micro"
      tags = {
        Name = "Instance-nraj-c"
      }
      lifecycle {
        ignore_changes = [ami]
      }
}

resource "aws_iam_user" "Instance-nraj-c_iam" {
      name = "Instance-nraj-c_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-nraj-c_iam_policy_attachment0" {
      user = aws_iam_user.Instance-nraj-c_iam.name
      policy_arn = aws_iam_policy.Instance-nraj-c_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-nraj-c_iam_policy0" {
      name = "Instance-nraj-c_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-nraj-c_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-nraj-c_iam_access_key" {
      user = aws_iam_user.Instance-nraj-c_iam.name
}

data "aws_iam_policy_document" "Instance-nraj-b_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-nraj-b.arn]
      }
}

data "aws_ami" "ubuntu_latest" {
      most_recent = true
      owners = ["099720109477"]
      filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64*"]
      }
      filter {
        name = "virtualization-type"
        values = ["hvm"]
      }
}

data "aws_iam_policy_document" "Instance-nraj-a_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-nraj-a.arn]
      }
}

data "aws_iam_policy_document" "Instance-nraj-c_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-nraj-c.arn]
      }
}



