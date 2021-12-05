###usd Spend function
function Get-UsdTransactions ($Crypto){
$sum =@()
$transac =@()
$totalusd =@()
$transac = Get-Content -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$Crypto\TransactionsUSD.txt"
$sum = $transac | Measure-Object -Sum
$totalusd = $sum.Sum
$totalusd
}