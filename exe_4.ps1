#Liste todos os serviços do Windows que estejam com status Running

$lista = Get-Service
$servicos = @()



for ($i=0; $i -lt $lista.Count; $i++){
    if ($lista[$i].Status -eq "Running"){
        $Vetor = [PSCustomObject]@{
            status = $lista[$i].Status
            name = $lista[$i].Name
        }       
    }
   $servicos+=$Vetor
}


for ($i=0; $i -lt $lista.Count; $i++){
    Write-Host ($servicos[$i].status) "e" ($servicos[$i].name)
}
