variable "base_url" {
  type = string
  description = "url of the enterprise github server"
  default = "https://github.service.anz/"
}
variable "owner"{
    type = string
    description = "organisation name"
    default = "personalorganisation1"
}

variable "token" {
  type = string
  description = "personel access token"
  default = "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"
}


# output "gh_members" {
#   value = module.members.gh_members
# }
# output "org_mem_map" {
#   value = module.members.org_mem_map
# }
output "troublesome" {
  value = module.members.troublesome
}