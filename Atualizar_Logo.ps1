# Criado por: Daniel Figueiredo
# Github: https://github.com/danielfsantoss

$empresa = 'Empresa.bmp'
$list_arq = @("imp_logo.bmp","Venda.bmp","Venda2.bmp") # Altere para os arquivos de logo necessários
$dir_logos = "C:\Drivers e Utilitários\Logos\" # Altere para o caminho de onde se encontram as logos
$qte_pontos = 15 # Altere para a quantidade de pontos existentes
$qte_pontos++

for($l=0;$l-lt$list_arq.Length;$l++){
    echo ("Copiando...")
    $list_arq[$l]
    for($i=1;$i-lt$qte_pontos;$i++){
        if($i-gt9){
            $j = "0$i"
        }else{
            $j = "00$i"
        }
            if((($i -ne 5) -and ($i -ne 7) -and ($i -ne 11) -and ($i -ne 14))){ # Esse if é responsável por manter os pontos como exceção, que não vão utilizar as logos importadas.
            # del ("C:\Chianca\NFE_Emissao$j\Danfe\imp") -Force
            # mkdir ("C:\Chianca\NFE_Emissao$j\Danfe\imp") -Force
            # mkdir ("C:\CHIANCA\0039$j\") -Force
            Rename-Item -Path "C:\CHIANCA\NFe_Emissao$j\Danfe\imp\Empresa.bmp" -NewName "C:\CHIANCA\NFe_Emissao$j\Danfe\imp\Empresa__old.bmp"
            Rename-Item -Path "C:\CHIANCA\0039$j\$($list_arq[$l])" -NewName "C:\CHIANCA\0039$j\$($list_arq[$l])__old.bmp"
            copy "$dir_logos$empresa" "C:\CHIANCA\NFe_Emissao$j\Danfe\imp\$empresa"
            copy "$dir_logos$($list_arq[$l])" "C:\CHIANCA\0039$j\$($list_arq[$l])"
            echo $i
        }
    }
    echo ("$empresa Copiado")
    echo ("$($list_arq[$l]) Copiado")
}
