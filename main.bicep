param location string = 'westeurope'
param storageAccountName string = 'johanstorage20250312'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

output storageAccountId string = storageAccount.id
