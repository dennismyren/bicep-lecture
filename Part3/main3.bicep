targetScope = 'resourceGroup'

param keyVaultName string
param userObjectId string
var location = resourceGroup().location

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
    enabledForTemplateDeployment: true
    tenantId: tenant().tenantId
  }
}
