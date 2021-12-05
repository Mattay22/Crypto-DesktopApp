# Crypto-DesktopApp
Powershell App to keep track of crypto balance, transactions (Beta)

Uncomplete issues:
feel free to add PR to fix, its on my backlog but looking to do more interesting things first :)
 - Before use, you will need change the paths for the scripts so it fits with your machine.
 - Its also does not except commas or currency symbols.
 - case sensative currencys

 Upcoming releases:
 - API intergration to get live crypto prices, so you can compare with your DCA
 - move to CSV away from notepads to add more Data i.e date of purchase, profit loss, historical data etc
 - Import historical data
 - Install script to take care of first time set-up

 Overview
 Currently it comes with several new commands listed below. Main purpose of this module is to record your crypto purchases locally through powershell so you have the data at hand

 List of commands (Parameters in brackets)

 New-CryptoPurchase
 Used When new purchase is done, or to update the historical data initially

 Get-Balance ($crypto)
 Example: Get-Balance -crypto Matic

 Get-DcaAverage ($Crypto)
 Example: Get-DcaAverage -crypto Matic

 List-Cryptos

 Get-UsdTransactions ($Crypto)
 Example: Get-UsdTransactions -crypto Matic

 Get-CryptoSummary
 Get a table with info on everything