# Classe pagina de profile
class Profile < SitePrism::Page
  element :campo_name, '#user_profile_name'
  element :campo_bio, '#user_profile_bio'
  element :campo_url, '#user_profile_blog'
  element :mensagem_sucesso, 'div[class^=container-lg]'

  def acessar_emails
    click_link 'Emails'
  end

  def atualizar_name
    @faker_user_name = Faker::Name.name
    campo_name.set @faker_user_name
    click_button 'Update profile'
    sleep 2
  end

  def atualizar_bio
    @faker_bio = Faker::Lorem.sentence(word_count: 5)
    campo_bio.set @faker_bio
    click_button 'Update profile'
    sleep 2
  end

  def atualizar_url
    @faker_url = Faker::Internet.url(host: 'example.com')
    campo_url.set @faker_url
    click_button 'Update profile'
    sleep 2
  end
end
