# Atualizador de Logos

Shellscript para atualizar logomarca de empresas usuárias do sistema ERP Chianca Softwares.

## Funcionamento

O script copiará os arquivos para as respectivas pastas onde cada usuário se encontra configurado.  
Como nesse caso o usuário tem 15 pontos diferentes, adicionei alguns loops utilizando `for()` para que os arquivos sejam copiados para as 15 pastas de destino evitando a redundância no código.

## Alterando o código

`$list_arq` Altere/Adicione os nomes dos arquivos  
`$dir_logos` Altere para o diretório onde se encontram os arquivos  
`$qte_pontos` Altere para a quantidade de pontos que pertencem à empresa que estejam no mesmo servidor  

## Extras

Esse código é facilmente manipulável, tanto por ter um tamanho reduzido, quanto pela facilidade de entender a lógica de funcionamento.
