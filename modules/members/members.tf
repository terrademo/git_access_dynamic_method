data "github_organization_teams" "all" {}
resource "github_team_members" "addmembers" {
#   depends_on = [
#     module.teams.github_team
#   ]
  for_each = var.gh_members
  team_id = local.team_members[each.key].id

  
  dynamic "members" {
    for_each = compact([for member in each.value[*]:lookup(local.org_mem_map,member,"")])

    content {
        username = members.value

        #adding role of a user to maintainer if it is present in maintainer.yaml file else the role is member
        
    }
  }
}