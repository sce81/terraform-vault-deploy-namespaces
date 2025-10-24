output "namespace" {
    value = vault_namespace.main.path
}

output "child_namespaces" {
    value = vault_namespace.children[*].*
}