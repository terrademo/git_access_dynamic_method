resource "github_team" "css_teams" {
  for_each = var.github_teams
  name = each.value.name
  description = each.value.description
  privacy = "closed"
}