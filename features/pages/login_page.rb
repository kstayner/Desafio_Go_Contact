# Classe Pagina de Login
class LoginPage < SitePrism::Page
  element :campo_user_or_email, '#login_field'
  element :campo_senha, '#password'
  element :botao_signin, 'input[name=commit]'
  element :login_erro, 'div[class="flash flash-full flash-error "]'

  def initialize
    @logindata = AUTH['login']
  end

  def login_com_username
    campo_user_or_email.set @logindata['usuario']
    campo_senha.set @logindata['senha']
    botao_signin.click
  end

  def login_com_email
    campo_user_or_email.set @logindata['email']
    campo_senha.set @logindata['senha']
    botao_signin.click
  end

  def login_com_username_inexistente
    faker_user_name = Faker::Name.name
    campo_user_or_email.set faker_user_name
    campo_senha.set @logindata['senha']
    botao_signin.click
  end

  def login_com_email_inexistente
    number = Faker::Number.number(digits: 10)
    faker_email = "test#{number}@gmail.com"
    campo_user_or_email.set faker_email
    campo_senha.set @logindata['senha']
    botao_signin.click
  end

  def login_com_senha_incorreta
    campo_user_or_email.set @logindata['usuario']
    campo_senha.set '123456789'
    botao_signin.click
  end
end
