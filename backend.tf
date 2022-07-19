terraform {
  backend "s3" {
    bucket         = "talent-academy-monika-lab-tfstates"
    key            = "talent-academy/vpc/terraform.tf.states"
    dynamodb_table = "terraform-lock"
  }
}