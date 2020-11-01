Dado('que acesso a pagina de cadastro') do
  @load_url.open_home_url
  @home.acesso_pagina_cadastro
end

Quando('preencho os dados de cadastro') do
  @pagina_cadastro.submeter_cadastro
end

Entao('nao consigo clicar no botao Create account') do
  find_disabled_button = page.has_css?('button[class^="btn-mktg"][id="signup_button"][disabled]')
  expect(find_disabled_button).to be_truthy
end
