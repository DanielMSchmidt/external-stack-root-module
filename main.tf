# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

resource "random_pet" "this" {
  prefix = var.prefix
  length = 3
}

resource "random_integer" "num" {
    min = 1
    max = 9
}

output "pet" {
  value = random_pet.this.id
}

output "number" {
  value = random_integer.num.result
}
