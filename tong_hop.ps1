# Script: tong_hop.ps1 
# Tac gia: Nguyen Duc Tai
# Ngay tao: 11-11-2026
Write-Host "Dang tao bao cao..." 
"=== BAO CAO VAN HANH MODEL AI ===" > logs\tong_hop.txt
Get-Content logs/member.log | Select-String "status=500" >> logs\tong_hop.txt
Get-Content logs/member.log | Select-String "status=404" | Measure-Object >> logs\tong_hop.txt 
Write-Host "Hoan thanh!"
