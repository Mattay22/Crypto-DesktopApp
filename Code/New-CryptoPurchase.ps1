Function New-CryptoPurchase {
$price =@()
$usdt =@()
$amount =@()
$i =@()

##find out what curreny and look up to see if it exists, also write avaibale ones

$listofoptions = Get-ChildItem -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos"

$listofoptionsA = $listofoptions.Name# -replace ".txt"

Write-Output "Your list of Crypto are $listofoptions"

$currencycheck = Read-Host "what currency are you using?"

If($listofoptionsA -match $currencycheck ){

"Update relevant note now"

}Else{

New-Item -Name "$currencycheck" -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos" -ItemType directory

Out-file -FilePath "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$currencycheck\Balance.txt"

}
$price = read-host -Prompt "please enter the price you bought at"

$usdt = Read-Host -Prompt "how much did spend in $"

$price | Out-File -FilePath "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$currencycheck\DCA_cal.txt" -Append
$usdt | Out-File -FilePath "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$currencycheck\TransactionsUSD.txt" -Append

$i = 1 / $price
$amount = $i * $usdt
Write-Output "You recieved approx $amount"
$content = Get-Content -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$currencycheck\Balance.txt"
$con = $content
$balance = ($amount + $content)

$balance | Out-File -FilePath "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$currencycheck\Balance.txt"
}