# terraform-gcp

```terraform init```

```terraform plan -var-file=dev.tfvars -out .terraform/latest-plan```


```terraform apply --input=false .terraform/latest-plan```


# Delete the created resources

```terraform plan --destroy -var-file=dev.tfvars -out .terraform/latest-plan```


```terraform apply --input=false .terraform/latest-plan```
