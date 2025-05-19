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

module keyVaultModule 'keyVault.bicep' = {
  name: 'keyVaultModule'
  scope: resourceGroupResource
  params: {
    keyVaultName: keyVaultName
    userObjectId: userObjectId
    location: resourceGroupResource.location
  }
}

