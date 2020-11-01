# Classe Pagina Cadastro
class PaginaCadastro < SitePrism::Page
  element :campo_username, '#user_login'
  element :campo_email, '#user_email'
  element :campo_password, '#user_password'
  element :botao_verificar, '#home_children_button'
  element :botao_create_account, '#signup_button'

  def submeter_cadastro
    number = Faker::Number.number(digits: 10)
    faker_email = "test#{number}@gmail.com"
    campo_username.set number
    campo_email.set faker_email
    campo_password.set 'Pa$$w0rd_002'
    sleep 3
  end
end
