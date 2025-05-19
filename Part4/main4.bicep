targetScope = 'subscription'

param keyVaultName string
param resourceGroupName string
param userObjectId string
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
    accessPolicies: [
      {
        tenantId: tenant().tenantId
        objectId: userObjectId
        permissions: {
          keys: [ 'all']
          secrets: [ 'all' ]
        }
      }
    ]
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: tenant().tenantId
  }
}
