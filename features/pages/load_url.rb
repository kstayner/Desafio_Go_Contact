# Classe abre url
class LoadUrl < SitePrism::Page
  def open_home_url
    visit ENVIRONMENT['site']
  end
end
