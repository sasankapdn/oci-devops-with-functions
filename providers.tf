provider "oci" {
            tenancy-ocid = var.tenancy-ocid
            region       = var.region

            }

            provider "oci" {
            alias        = "home-region"
            tenancy-ocid = var.tenancy-ocid
            region       = lookup(data.oci-identity-regions.home-region.regions[0], "name")


            }

            provider "oci" {
            alias        = "current-region"
            tenancy-ocid = var.tenancy-ocid
            region       = var.region


            }
