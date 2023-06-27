terraform {
  backend "s3" {
      bucket = "terraform-state-ubdkzlusjyivfp2fmjjyjipfnq09d1eevmcwurso996w2"
      key = "terraform/state"
      region = "us-west-2"
  }
}





