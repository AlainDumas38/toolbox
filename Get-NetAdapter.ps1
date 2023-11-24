#code test git lab formation 
$result = Get-NetAdapter
$result.Name + $result.LinkSpeed | Out-Default

 Get-Language | Out-Default

 $result.Name | Out-Default
 $resultComputer = Get-MpComputerStatus

 $resultComputer.ComputerID

 $alias = Get-Alias
 $alias.Name
 

Write-Host "fin du script premiere partie"

 $text = "bien"

 if($text -eq "bien") {Write-Host "bien jouer"} else { Write-Host "Oupssss"}

 $text2 ="tableau"
 $nombrelettre = $text2.Length
 Write-Host " il y a  $nombrelettre carractére dans le  du mot $text2"
 # fin du script
 #suite du script 
$nameP =  Get-AppPackage
$nameP.PackageFullName 


$object = Get-WmiObject -Class win32_Process
$object.OSName[1]
$object.Name
 
#hello
Clear-Host
#the end
