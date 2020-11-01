#language: pt
Funcionalidade: Login
  Como QA
  Quero validar o Login
  Para que o sistema esteja conforme o especificado

  @login_username @login @all
  Cenario: Login com username
    Dado que acesso a pagina de Login
    Quando faco login com username existente
    Então o login e feito com sucesso

  @login_email @login @all
  Cenario: Login com email
    Dado que acesso a pagina de Login
    Quando faco login com email existente
    Então o login e feito com sucesso 
