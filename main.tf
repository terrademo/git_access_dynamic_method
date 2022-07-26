module "teams" {
    source = "./modules/teams"
    github_teams = local.github_css_teams
}

module "members" {
    source = "./modules/members"
    gh_members = tomap(yamldecode(file("./users.yaml"))).teams
}