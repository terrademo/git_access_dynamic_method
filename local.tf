locals {
  github_css_teams = {
       css-admin-release     = {
           description = "Approving the change to master"
           name        = "css-admin-release"
           privacy     = "VISIBLE"
        }
       css-review-finacle    = {
           description = "PR reviewer for Finacle components"
           name        = "css-review-finacle"
           privacy     = "VISIBLE"
        }
       ib-admin              = {
           description = "IB Acceleration Team"
           name        = "ib-admin"
           privacy     = "VISIBLE"
        }
       ib-bot                = {
           description = "Only Service Account fur automation"
           name        = "ib-bot"
           privacy     = "VISIBLE"
        }
       ib-developers         = {
           description = "IB Engineers Pool"
           name        = "ib-developers"
           privacy     = "VISIBLE"
        }
       ib-release-lead       = {
           description = ""
           name        = "ib-release-lead"
           privacy     = "VISIBLE"
        }
       ib-reviewer-codefresh = {
           description = "Reviewing Codefresh changes in IB"
           name        = "ib-reviewer-codefresh"
           privacy     = "VISIBLE"
        }
       ib-reviewer-k8        = {
           description = "Reviewing K8 Changes in IB"
           name        = "ib-reviewer-k8"
           privacy     = "VISIBLE"
        }
    }
}