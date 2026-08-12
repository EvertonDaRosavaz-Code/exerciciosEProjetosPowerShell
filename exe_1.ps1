#Exercicio par ou impar | 09/08/2026  - 11:08Z|

function TestarPar {
    param([int]$x)
    if ($x%2 -eq 0){
        Write-Host "Numero par"
    }
    else{
        Write-Host "Numero impar"
    }
}

$teste = Read-Host "Digite um numero "

TestarPar -x $teste