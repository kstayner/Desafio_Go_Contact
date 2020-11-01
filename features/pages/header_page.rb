# Classe Header
class PageHeader < SitePrism::Page
  element :header, 'header[role="banner"]'
  element :avatar, 'img[class="avatar avatar-user "]'
  elements :menu, 'summary[role="button"]'

  def acessar_settings
    menu[1].click
    sleep 2
    click_link 'Settings'
  end
end
