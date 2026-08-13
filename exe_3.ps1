#listar o maior processo e o usu da memoria 
$processos = Get-Process
$lista = @()

for ($i = 0; $i -lt $processos.Count; $i++) {
    $processoAtual = @{
        name = $processos[$i].Name
        byte = $processos[$i].WS
    }
    $lista+=$processoAtual
}
$maior = 0
$NewName =""
for ($i = 0; $i -lt $lista.Count; $i++) {
    if($lista[$i].byte -gt $maior){
        $maior = $lista[$i].byte
        $NewName = $lista[$i].name
    }
}
$converter = ($maior/1048576)
Write-Host "O processo $NewName  tem $converter MB "