# frozen_string_literal: true

class WebmotorsPage < SitePrism::Page
  set_url ""

  include RSpec::Matchers

  element :pesquisa, :css, "#searchBar"
  element :marca, :xpath, '//*[@id="WhiteBox"]/div[1]/div[2]/div/div/div/div/div/div[1]/a/div[2]/strong'
  element :modelos, :xpath, '//div[text()="Todos os modelos"]'
  element :veiculo, :xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[3]/div/div[5]/a[2]'
  element :combo_versao, :xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]'
  element :selecionar_versao, :xpath, '//*[@id="root"]/main/div[1]/div[2]/div/div[2]/div/div[4]/a[1]'
  element :estoque, :xpath, '//strong[@class="sc-hzDkRC gcWVAm"]'

  def buscar_veiculo
    pesquisa.set "honda"
  end

  def filtro_veiculo
    marca.click
    modelos.click
    veiculo.click
    combo_versao.click
    selecionar_versao.click
  end

  def validar_pagina_webmotors
    expect(page).to have_xpath('//*[@id="root"]/main/div[1]/div[3]/h1')
  end

  def validar_quantidade_veiculos
    estoque.visible?
  end

  def validar_estoque
    expect(page).to have_xpath('//strong[@class="sc-hzDkRC gcWVAm"]', :text => "68", :visible => true)
  end
end
