terraform {
  cloud {
    organization = "abilashterraestate"

    workspaces {
      name = "terra_gcp"
    }
  }
}