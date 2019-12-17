
variable "Resource_Group" {
    type ="string"
    default = "harshilfuction"
  
}
variable "location" {
    type ="string"
    default = "westus2"
  
}
variable "functionapp_storage" {

    type ="string"
    default = "harsshilfunc34523"
  
}
variable "App_Service_Plan" {
    type ="string"
    default ="harshilfunc1234"
  
}
variable "SKU" {
    type= "string"
    default ="Standard"  
}

variable "Function_App" {
    type = "string"
    default = "harshilfunc321"
}