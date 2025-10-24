resource "vault_namespace" "main" {
  path = var.namespace
}

resource "vault_namespace" "children" {
  for_each  = var.child_namespaces
  namespace = vault_namespace.main.path
  path      = each.key
}