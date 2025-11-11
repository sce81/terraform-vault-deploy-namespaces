# Terraform Vault Deploy Namespaces
### All code is provided for reference purposes only and is used entirely at own risk. Code is for use in development environments only. Not intended for Production use. 

Configures Terraform to deploy Vault Namespaces


##### Usage
```
    source = "app.terraform.io/HashiCorp_AWS_Org/terraform-vault-deploy-namespaces/vault"
  
    namespace        = var.namespace
    child_namespaces = toset(split(", ", var.child_namespaces))
```

### Outputs

The following values are outputted
```
    namespace                  = vault_namespace.main.path
    child_namespaces.          = value = vault_namespace.children[*].*
```

