terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.35"
        }
    }


    backend "s3" {
        encrypt = true
        bucket  = "s3bucketlqlqlqllq123"
        region  = "eu-central-1"
        key     = "state"
    }
}