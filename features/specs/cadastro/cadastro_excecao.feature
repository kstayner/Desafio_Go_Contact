#language: pt
Funcionalidade: Tentativa de cadastro
  Como QA
  Quero validar as regras de exceção da tela de cadastro
  Para que o sistema esteja conforme o especificado

  @tentativa_cadastro @all
  Cenario: Tentativa de cadastro
    Dado que acesso a pagina de cadastro
    Quando preencho os dados de cadastro
    Então nao consigo clicar no botao Create account
