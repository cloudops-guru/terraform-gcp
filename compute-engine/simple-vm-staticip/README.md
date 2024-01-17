# terraform-gcp

## Create VM using terraform 
Initialise the terraform provider and required plugins , create a plan using the env file and then apply the change

```groovy 
terraform init 

terraform plan -var-file=dev.tfvars -out .terraform/latest-plan

terraform apply --input=false .terraform/latest-plan
```


## Delete the created resources
Create a plan using the env file with --destroy argument and then apply the change

```groovy 
terraform plan --destroy -var-file=dev.tfvars -out .terraform/latest-plan

terraform apply --input=false .terraform/latest-plan
```
