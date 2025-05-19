targetScope = 'resourceGroup'

resource keyVaultResource 'Microsoft.KeyVault/vaults@2024-11-01' = {
  name: 'kv-this-demo-keyvault'
  location: 'eastus'
  properties: {
    accessPolicies: [
      {
        tenantId: '7ac9aa31-6b4c-426d-b1b2-e506dbff866e'
        objectId: 'zae6aa21-6bz3-4i6d-bib2-e506dbff8eee'
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
    tenantId: '7ac9aa31-6b4c-426d-b1b2-e506dbff866e'
  }
}
