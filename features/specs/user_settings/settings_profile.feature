#language: pt
Funcionalidade: Atualizar Public profile
  Sendo um usuário com perfil no github
  Quero atualizar meu Public profile
  Para mante-los atualizados

  @atualizar_name @atualiza_profile @all
  Cenario: Atualizar Name
    Dado que acesso a pagina de settings profile
    Quando salvo registro alterando o Name
    Então e exibida a mensagem "Profile updated successfully"

   @atualizar_bio @atualiza_profile @all
  Cenario: Atualizar Bio
    Dado que acesso a pagina de settings profile
    Quando salvo registro alterando o Bio
    Então e exibida a mensagem "Profile updated successfully"

   @atualizar_url @atualiza_profile @all
  Cenario: Atualizar URL
    Dado que acesso a pagina de settings profile
    Quando salvo registro alterando a URL
    Então e exibida a mensagem "Profile updated successfully"
