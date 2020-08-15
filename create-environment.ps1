$random = Get-Random -Maximum 10000
$resourceGroup = "azurebi" 
$accountName = "storagebi" + $random
$location = "eastus"
$container = "terraform"


New-AzResourceGroup -Name $resourceGroup -Location $location

$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name $accountName `
  -Location $location `
  -SkuName Standard_LRS `
  -Kind StorageV2


$ctx = $storageAccount.Context

New-AzStorageContainer -Name $container -Context $ctx 