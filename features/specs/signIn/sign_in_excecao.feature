#language: pt
Funcionalidade: Tentativa de Login
  Como QA
  Quero validar as regras de exceção da tela de Login
  Para que o sistema esteja conforme o especificado

  @login_username_inexistente @login @all
  Cenario: Tentativa de login com username inexistente
    Dado que acesso a pagina de Login
    Quando faco login com username inexistente
    Então devo ver a mensagem "Incorrect username or password."

  @login_email_inexistente @login @all
  Cenario: Tentativa de login com email inexistente
    Dado que acesso a pagina de Login
    Quando faco login com email inexistente
    Então devo ver a mensagem "Incorrect username or password."

  @login_senha_incorreta @login @all
  Cenario: Tentativa de login com senha incorreta
    Dado que acesso a pagina de Login
    Quando faco login com senha incorreta
    Então devo ver a mensagem "Incorrect username or password."   
