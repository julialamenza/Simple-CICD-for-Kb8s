## EKS

This repository have everything that you need to make your eks works, including network part.

First you should export your AWS credentials

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
```

clone this repository

```
git clone https://github.com/julialamenza/kb8s-test.git
```

**Terraform Commands**

```
cd kb8s-test/
```

RUN

```
terraform init

terraform plan -o teste-tf
```

the "-o" will copy the output to teste-tf

After RUN

```
terraform apply -o teste-tf
```

Destroying you infraestructure

You may face an issue when running

```
terraform destroy
```

if this happens, you should run this

```
 terraform apply -refresh=true
```

and then re-run

```
terraform destroy

```

TODO

Solve issue with ALB

```
"...","error":"expect exactly one securityGroup tagged with kubernetes.io/cluster/... for eni eni-0d46id..., got:
```

Add

```
kubernetes.io/cluster/
```

Tag on security groups that are missing (SG description - EKS node shared security group
) check how to do it by TF
