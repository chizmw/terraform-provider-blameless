provider "blameless" {
  instance = var.blameless_instance
  key      = var.blameless_key
}

resource "blameless_organization" "org_settings" {
  name     = "local"
  timezone = "US/Pacific"
}

resource "blameless_incident_roles" "role_settings" {
  roles = [
    "Commander",
    "Communication lead",
    "Observer",
  ]
}

resource "blameless_incident_severities" "sev_settings" {
  severities {
    sev0_label = "SEV0"
    sev1_label = "SEV1"
    sev2_label = "SEV2"
    sev3_label = "SEV3"
  }
}

resource "blameless_incident_type" "incident_type_security" {
  name   = "Security"
  active = true
}
