targetScope = 'resourceGroup'

resource keyVaultResource 'Microsoft.KeyVault/vaults@2024-11-01' = {
  name: 'kv-this-demo-keyvault'
  location: 'eastus'
  properties: {
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: '7ac9aa31-6b4c-426d-b1b2-e506dbff866e'
  }
}
