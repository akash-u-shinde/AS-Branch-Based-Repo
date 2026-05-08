variable "prefix" {
    type = "string"
    description= "(Optional) The prefix which should be used for all resources in this example. Default to taco"
    default= "taco"
}

variable "location" {
    type= string
    description= (Optional) The azure Region in which all resources in this example should be created. Default to Central India"
    default= "Central India"
}

variable "environment" {
    type= string
    description=(Required) The environment in which all resource in this example should be created. "
}