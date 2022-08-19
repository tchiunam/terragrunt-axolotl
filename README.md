# Terragrunt for Axolotl
#### Popularity
<div align="left">
  <img alt="Repo Stars" src="https://img.shields.io/github/stars/tchiunam/terragrunt-axolotl?style=social" />
  <img alt="Watchers" src="https://img.shields.io/github/watchers/tchiunam/terragrunt-axolotl?style=social" />
</div>

<br />
The Terraform makes our life easier by supporting the terraform makes our life easier by supporting **module** and **workspace** to manage infrastructure in multiple envrionments. However there are quite a lot limitations when the infrastructure becomes more complex because it doesn't support variables with interpolation and shared variables.

[terraform-axolotl](https://github.com/tchiunam/terraform-axolotl) demonstrates the complication when we need to modularize our Terraform code. The reusability of Terraform modules comes with the use of many symlinks since modules have a lot of dependencies. On one side it is helping us with the flexibility of building up the blocks while it is also killing us with the incapability of handling of variables.

This repository contains the setup that shows you the way to adopt Terragrunt in a complex infrastructure.

# Use it
To plan a stack:
```
terragrunt run-all plan
```

To apply a stack:
```
terragrunt run-all apply
```

To apply a stack with variable files:
```
terragrunt run-all apply -var-file <variable-filename>
```

To validate inputs:
```
terragrunt validate-inputs
```

#### See more  
1. [terraform-module](https://github.com/tchiunam/terraform-module) for modules used in this repository
1. [terraform-axolotl](https://github.com/tchiunam/terraform-axolotl) for illustration of Terraform module and workspace with Terragrunt
