locals {
  org_members = data.github_organization.organisation.members

  org_mem_map = {for member in local.org_members: member=>member}
  all_teams = data.github_organization_teams.all.teams

  members = tomap({for member in local.org_members: member=>member})
  team_members = {for i, team in local.all_teams:team.name=>team}
}

variable "gh_members" {
  
}






# output "gh_members" {
#   value = var.gh_members
# }
# output "org_mem_map" {
#   value = local.org_mem_map
# }

output "troublesome" {
  value=[for member in var.gh_members.ib-developers:lookup(local.org_mem_map,member,"")]
}