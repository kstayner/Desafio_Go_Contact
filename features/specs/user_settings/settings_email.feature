#language: pt
Funcionalidade: Validar Primary email address
  Sendo um usuário com perfil no github
  Quero validar meu Primary email address
  Para garantir que esta correto

  @validar_email_cadastrado @all
  Cenario: Validar e-mail cadastrado
    Dado que acesso a pagina de settings emails
    Então devo ver o Primary email address "teste.bol.2017@bol.com.br"
