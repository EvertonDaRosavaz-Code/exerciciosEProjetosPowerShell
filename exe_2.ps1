#calculadora desconto | 09/08/2026 | 11:10
#Cliente Comum: 0% de desconto (preço normal)
#Cliente VIP: 10%
#Premium: 20% de desconto
function CalcularDesconto {
    param (
        [decimal]$PrecoOriginal,
        [string]$Categoria
    )

    if($Categoria -eq "Comum"){
        Write-Host "Cliente comum 0% de desconto valor de $PrecoOriginal"
    }
    elseif ($Categoria -eq "Vip") {
        $valorDesconto =$PrecoOriginal - ($PrecoOriginal*(10/100))
        Write-Host "Valor do desconto para VIPs de 10%"
        Write-Host "Valor a pagar de R$ $valorDesconto"
    }
    else{
        $valorDesconto =$PrecoOriginal - ($PrecoOriginal*(20/100))
        Write-Host "Valor do desconto para Premium de 20%"
        Write-Host "Valor a pagar de R$ $valorDesconto"
    }
    
}
$preco = Read-Host "Preço"
$tipoFuncionario = Read-Host  "Tipo de cliente"

CalcularDesconto -PrecoOriginal $preco -Categoria $tipoFuncionario