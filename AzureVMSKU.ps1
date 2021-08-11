$location="CentralUS"
$PublisherNmae="MicrosoftWindowsDesktop"
$Offer="office-365"
$SkuMatchString="*evd*"

 

$sku= Get-AzVMImageSku -Location $location -PublisherName $PublisherNmae -Offer $Offer|? {$_.Skus -like $SkuMatchString}
$sku|Get-AzVMImage|Sort-Object -Descending -Property Version|select version,Skus,offer,PublisherName
 