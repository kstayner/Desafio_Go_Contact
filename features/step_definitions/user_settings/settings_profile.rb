Dado('que acesso a pagina de settings profile') do
  @load_url.open_home_url
  @home.acesso_pagina_login
  @login.login_com_username
  @page_header.acessar_settings
end

Quando('salvo registro alterando o Name') do
  @profile.atualizar_name
end

Quando('salvo registro alterando o Bio') do
  @profile.atualizar_bio
end

Quando('salvo registro alterando a URL') do
  @profile.atualizar_url
end

Entao('e exibida a mensagem {string}') do |mensagem|
  expect(@profile.mensagem_sucesso).to have_text mensagem
end
