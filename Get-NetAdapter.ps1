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

#pausse dans le script
 
#hello
$alias = Get-Alias
$alias[1]
# modif du code dans git hub
$dates = Get-Date
$dates.DateTime
#fin date et heure
#debut de la fonction 

class Multiplicateur {
    [int]$facteur1
    [int]$facteur2

    Multiplicateur([int]$f1, [int]$f2) {
        $this.facteur1 = $f1
        $this.facteur2 = $f2
    }

    [int] Multiply() {
        return $this.facteur1 * $this.facteur2
    }
}

# Exemple d'utilisation de la classe
$multiplieur = [Multiplicateur]::new(5, 7)
$resultat = $multiplieur.Multiply()

Write-Host "Le résultat de la multiplication est : $resultat"
#fin de la multiplication 
Write-Host "nouvelle branche"





