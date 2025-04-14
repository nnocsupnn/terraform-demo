### Create .env file for the aws cli credentials

Content: 
```text
export AWS_ACCESS_KEY_ID=abc1234
export AWS_SECRET_ACCESS_KEY=ADWAWDAWDW31
```

Then run:
> source .env

#### Lazy cmds
> alias tf=terraform

---

# Terraform

### Dry run / validate
> tf init

### Init from different folder
> tf -chdir=vpc init

### Create a plan for execution
> tf -chdir=vpc plan -out vpc.out
### Apply the IaC
> tf -chdir=vpc apply -auto-approve "vpc.out"
### Destroy the IaC
> tf -chdir=vpc destroy -auto-approve "vpc.out"
---
#### PS: **Do not use `auto approve` in production**