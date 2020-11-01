Quando('faco login com username inexistente') do
  @login.login_com_username_inexistente
end

Quando('faco login com email inexistente') do
  @login.login_com_email_inexistente
end

Quando('faco login com senha incorreta') do
  @login.login_com_senha_incorreta
end

Entao('devo ver a mensagem {string}') do |mensagem|
  expect(@login.login_erro).to have_text mensagem
end
