output "appGatewayIp" {
  value = data.azurerm_public_ip.seti-public-ip.ip_address
}