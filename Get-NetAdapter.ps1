#code test git lab formation 
$result = Get-NetAdapter
$result.Name + $result.LinkSpeed | Out-GridView

 Get-Language | Out-Default

 $result.Name | Out-Default
 $resultComputer = Get-MpComputerStatus

 $resultComputer.ComputerID

 $alias = Get-Alias
 $alias.Name
 Pause
 cls

 Write-Host "fin du script premiere partie"

 $text = "bien"

 if($text -eq "bien") {Write-Host "bien jouer"} else { Write-Host "Oupssss"}




 
