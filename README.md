# cloudflare-dns-terraform-config
This is simple project template for setup the terraform of controlling the DNS record remotely to cloudflare.

## Prerequisite
1. You should already installed terraform you local machine
2. You should registered your domain name to cloudflare
3. You have created a cloudflare `api token` and retrieved the `zone-id` of your domain in cloudflare

## Setup
1. Clone the project
   ```shell
   git clone https://github.com/xh-dev/cloudflare-dns-terraform-config.git
   cd cloudflare-dns-terraform-config
   ```
3. rename the `init.tfvars.tmpl` to `init.tfvars`
   ```shell
   mv init.tfvars.tmpl init.tfvars
   ```
5. update the value `{cloudflare token}` and `{zone-id of the domain}` to your `cloudflare api token` and the `domain zone-id`
6. execute below command to init the terraform
   ```shell
   terraform init
   ```

## Create new record
Let say we own the domain `example.com`, the below example demo whole to create a `A record` of `main.example.com`

1. Create file named `dns.tf` and file in the value as below script
   ```shell
   resource "cloudflare_record" "{name of the record}" {
     zone_id  = var.zone_id                                
     name    = "site1"                             
     value   = "127.0.0.256"                     
     type    = "A"                          
     proxied = true                     
     comment = "A record for site1.example.com
   }
   ```
   The above configuration create an `A Record` of site1 pointing to ip `127.0.0.256` and enabling the cloudflare dns proxy.
3. execute command and follow instruction to apply the change
  ```shell
  terraform apply
  ```
