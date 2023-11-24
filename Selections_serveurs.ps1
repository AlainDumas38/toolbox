# Saisissez le nom du domaine active directory
$domainName = Read-Host "Entrez le nom du domaine (par exemple : mondomaine.local)"

# Obtenez la liste des serveurs Windows dans le domaine
$servers = Get-ADComputer -Filter {(OperatingSystem -like "Windows Server*") -and (Enabled -eq $true)} -Server $domainName | Select-Object -ExpandProperty Name

# Vérifiez s'il y a des serveurs Windows dans le domaine
if ($servers.Count -eq 0) {
    Write-Host "Aucun serveur Windows trouvé dans le domaine."
} else {
    # Demandez à l'utilisateur de saisir le préfixe du nom de serveur
    $prefix = Read-Host "Entrez le préfixe du nom de serveur (par exemple : ADK pour les serveurs qui commencent par ADK)"
    
    # Filtrer les serveurs en fonction du préfixe
    $filteredServers = $servers | Where-Object { $_ -like "$prefix*" }

    if ($filteredServers.Count -eq 0) {
        Write-Host "Aucun serveur ne correspond au préfixe '$prefix'."
    } else {
        # Ouvrez une boîte de dialogue pour enregistrer le fichier texte
        $saveFileDialog = New-Object System.Windows.Forms.SaveFileDialog
        $saveFileDialog.Filter = "Fichiers texte (*.txt)|*.txt"
        $saveFileDialog.Title = "Enregistrer la liste des serveurs Windows"
        $saveFileDialog.InitialDirectory = [Environment]::GetFolderPath("MyDocuments")

        if ($saveFileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
            $destinationPath = $saveFileDialog.FileName

            # Écrivez la liste des serveurs Windows filtrés dans le fichier texte de destination
            $filteredServers | Out-File -FilePath $destinationPath

            Write-Host "Liste des serveurs Windows enregistrée dans $destinationPath."
        } else {
            Write-Host "Aucun fichier n'a été enregistré."
        }
    }
}
#fin du code
