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


<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 5.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [vault_namespace.children](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |
| [vault_namespace.main](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_child_namespaces"></a> [child\_namespaces](#input\_child\_namespaces) | Name of Namespace to deploy | `set(string)` | `[]` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Name of Namespace to deploy | `string` | `null` | no |
| <a name="input_vault_namespace"></a> [vault\_namespace](#input\_vault\_namespace) | Namespace in which to deploy configuration | `string` | `null` | no |
| <a name="input_vault_url"></a> [vault\_url](#input\_vault\_url) | URL of Vault to configure | `string` | `null` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_child_namespaces"></a> [child\_namespaces](#output\_child\_namespaces) | n/a |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | n/a |
<!-- END_TF_DOCS -->