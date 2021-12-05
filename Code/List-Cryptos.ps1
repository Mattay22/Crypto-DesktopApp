###list of cryptos functions

function List-Cryptos {

$listofoptions = Get-ChildItem -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos"

$listofoptionsA = $listofoptions.Name

Write-Output $listofoptionsA


}