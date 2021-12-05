###summary function

function Get-CryptoSummary {
$DCAaverage=@()
$cryptos = List-Cryptos

Foreach($crypt0 in $cryptos){

$balance = Get-Balance -Crypto $crypt0

$DCAaverage = Get-DcaAverage -Crypto $crypt0

$DCAaverage = [math]::Round($DCAaverage,3)

$spendUsd = Get-UsdTransactions -Crypto $crypt0

#New-object psobject -Property @{"Coin"=$crypt0; "Balance"=$balance; "DCA Point"=$DCAaverage} | Sort-Object
$table = [PSCustomObject] @{"Coin"=$crypt0; "Balance"=$balance;"USD Spend"=$spendUsd; "DCA Point"=$DCAaverage}
$table
}

}