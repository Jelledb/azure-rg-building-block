terraform {
  backend "s3" {
    bucket = "buildingblocks-tfstates-p32kj" # Must match what's configured in automation backend
    key    = "terraform/spotify-bb"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"

  assume_role {
    role_arn = "arn:aws:iam::490004649140:role/LikvidBuildingBlockServiceRole" # Must match what's configured in automation backend
  }
}
