### Create .env file for the aws cli credentials

Content: 
```text
export AWS_ACCESS_KEY_ID=abc1234
export AWS_SECRET_ACCESS_KEY=ADWAWDAWDW31
```

Then run:
> source .env

# Terraform

### Dry run / validate
> terraform init

### Init from different folder
> terraform -chdir=vpc init

### Create a plan for execution
> terraform -chdir=vpc plan -out vpc.out
### Apply the IaC
> terraform -chdir=vpc apply -auto-approve "vpc.out"
### Destroy the IaC
> terraform -chdir=vpc destroy -auto-approve "vpc.out"
---
#### PS: **Do not use `auto approve` in production**