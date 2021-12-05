#balance function

Function Get-Balance ($crypto){


$balanceContent = Get-Content -Path "C:\Users\matth\Desktop\DCA_Calculator\Data\Cryptos\$crypto\Balance.txt"

write-output "$balanceContent"

}