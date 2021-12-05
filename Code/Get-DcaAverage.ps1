#getting average of numbers
Function Get-DcaAverage ($Crypto){

$dca_cal = Get-Content -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$Crypto\DCA_cal.txt"

if($dca_cal.Count -gt 1){
Average($dca_cal);
}else{

Write-Output $dca_cal

}
}
