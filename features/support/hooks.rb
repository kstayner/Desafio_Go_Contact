Before do
  @login = LoginPage.new
  @home = Home.new
  @load_url = LoadUrl.new
  @page_header = PageHeader.new
  @pagina_cadastro = PaginaCadastro.new
  @profile = Profile.new
  @profile_emails = ProfileEmails.new
  @logindata = AUTH['login']
  page.current_window.maximize
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').downcase!
  nome_cenario = nome_cenario.gsub(%r{([_@#!%()\-=;><,{}~\[\]./?"*\^$+\-]+)}, '')
  screenshot = "logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
end
