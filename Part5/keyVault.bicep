param keyVaultName string
param userObjectId string
param location string

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
    enabledForTemplateDeployment: true
  }
}
