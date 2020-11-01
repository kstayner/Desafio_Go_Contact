Dado('que acesso a pagina de settings emails') do
  @load_url.open_home_url
  @home.acesso_pagina_login
  @login.login_com_username
  @page_header.acessar_settings
  @profile.acessar_emails
end

Entao('devo ver o Primary email address {string}') do |email|
  expect(@profile_emails.primary_email).to have_text email
end
