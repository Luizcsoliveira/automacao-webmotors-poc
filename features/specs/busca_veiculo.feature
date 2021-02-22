#language: pt

Funcionalidade: Busca de Veiculo
Eu como um cliente do webmotors desejo realizar a busca de um Veiculo 
atraves do campo de pesquisa marca modelo e versao

@busca_veiculo
Cenario: Listar veiculos atraves da marca, modelo e versão
Dado que acesse o site da webmotors   
E digito a marca honda e seleciono a marca no campo de pesquisa
Quando sou direcionado para informar o modelo e versao do veiculo 
Entao deve exibir todos os veiculos disponiveis de acordo com o filtro

@estoque_mazola
Cenario: Validar o estoque da loja mazola automoveis
Dado que estou na pagina da loja mazola na webmotors
Quando busco pela quantidade de veiculos disponiveis no site do vendedor
Entao devo ver a quantidade de estoque disponivel para a loja mazola

