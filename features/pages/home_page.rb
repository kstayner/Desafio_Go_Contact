# Classe pagina Home
class Home < SitePrism::Page
  element :signIn, 'a[href="/login"]'
  element :signUp, 'a[href^="/join?ref_cta"]'

  def acesso_pagina_login
    signIn.click
  end

  def acesso_pagina_cadastro
    signUp.click
  end
end
