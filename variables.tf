variable "region" {
    description = "Region in which AWS Resources will be created example us-east-1"
    type = string
    default = "us-east-2" #I declared a variable for the provider without giving it default.
    # value, the user will have to pass in the region they want the resources to be created at runtime "us-east-1"

}
variable "profile" {
  type = string
  default = "obinna"
  description = "Enter your AWS profile name, enter default or the profile name"
}