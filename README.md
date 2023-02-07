# VPC Overview
VPC without internet connectivitiy. From Private subnet there are no way to access to the internet, except for S3.

# Parameters
|  Name  |  Type  | Description  |
| ---- | ---- | ---- |
|  vpc_cidr_block  |  string  | VPC CIDR range  |
|  vpc_name  |  string  | VPC Name for tag. This will be applied to the network resource tag prefix as {vpc-name}-*resource-name*.  |

# Outputs
|  Name  |  Type  | Description  |
| ---- | ---- | ---- |
|  vpc_id  |  string  | VPC ID  |
|  vpc_cidr  |  string  | VPC CIDR  |
|  public_subnet_1_id  |  string  | Public Subnet 1 ID  |
|  public_subnet_2_id  |  string  | Public Subnet 2 ID  |
|  private_subnet_1_id |  string  | Private Subnet 1 ID  |
|  private_subnet_2_id  |  string  | Private Subnet 1 ID  |
|  public_subnet_1_route_table_id  |  string  | Public Subnet 1 Route Table ID  |
|  public_subnet_2_route_table_id  |  string  | Public Subnet 1 Route Table ID  |
|  private_subnet_1_route_table_id |  string  | Private Subnet 1 Route Table ID |
|  private_subnet_1_route_table_id |  string  | Private Subnet 2 Route Table ID  |

# Usage

In your main.tf file, you can just write as below.
Please note that `ref=<>` is refering to the commit tag on this repo.

Make sure you are using right version in `ref=` parameter.

```hcl
module "network" {
  source         = "git@github.com:YAMABASS80/terraform-module-vpc-no-nat.git?ref=1.0.0"
  vpc_cidr_block = var.vpc_cidr_block
}
```

