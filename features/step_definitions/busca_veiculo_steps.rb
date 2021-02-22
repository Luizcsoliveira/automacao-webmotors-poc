

Dado("que acesse o site da webmotors") do
  webmotors.load
end

Dado("digito a marca honda e seleciono a marca no campo de pesquisa") do
  webmotors.buscar_veiculo
end

Quando("sou direcionado para informar o modelo e versao do veiculo") do
  webmotors.filtro_veiculo
end

Entao("deve exibir todos os veiculos disponiveis de acordo com o filtro") do
  webmotors.validar_pagina_webmotors
end

Dado("que estou na pagina da loja mazola na webmotors") do
  visit "carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concessionária%7Cloja"
end

Quando("busco pela quantidade de veiculos disponiveis no site do vendedor") do
  webmotors.validar_quantidade_veiculos
end

Entao("devo ver a quantidade de estoque disponivel para a loja mazola") do
  webmotors.validar_estoque
end
