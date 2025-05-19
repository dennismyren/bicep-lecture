targetScope = 'subscription'

param keyVaultName string
param resourceGroupName string
param tenantId string
var location = 'eastus'

resource resourceGroupResource 'Microsoft.Resources/resourceGroups@2025-03-01' = {
  name: 'rg-${resourceGroupName}'
  location: location
  properties: {}
}

resource keyVaultResource 'Microsoft.KeyVault/vaults@2024-11-01' = {
  name: 'kv-${keyVaultName}'
  location: location
  properties: {
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: tenantId
  }
}
