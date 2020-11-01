Dado('que acesso a pagina de Login') do
  @load_url.open_home_url
  @home.acesso_pagina_login
end

Quando('faco login com username existente') do
  @login.login_com_username
end

Quando('faco login com email existente') do
  @login.login_com_email
end

Então('o login e feito com sucesso') do
  expect(@page_header.has_avatar?).to be true
end
