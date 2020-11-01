# Projeto
Automação de Testes funcionais usando Cucumber/Capybara/SitePrism/Ruby


## Pré-Requisito para Windows
###Instalar Ruby com devkit na versão 2.7.2-1
https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.7.2-1/rubyinstaller-devkit-2.7.2-1-x64.exe

Observação: No final da instalação selecione a flag para instalar o ridk install e escolha a opção 3


###Instalar Google Chrome:
```
https://www.google.com/chrome/
```

###Instalar o ChromeDriver:
```
baixar o chrome driver referente a versão do seu chrome: https://chromedriver.chromium.org/downloads
mover o executável para a pasta C:\Windows
```

###Instalar a gem "Bundler"
```
  Abrir o prompt de comando e executar o comando:
  $ gem install bundler
```

###Baixar o projeto no github:
```
https://github.com/kstayner/Desafio_Go_Contact
```

###Na pasta do projeto instalar as dependências executando o comando:
```
$ bundle install
```

##Exemplos para execução dos testes:


####Função dos parâmetros passados via shell. Executa todos os testes com o navegador chrome:
```
bundle exec cucumber ENV=prod -p prod_chrome
```

####Função dos parâmetros passados via shell. Executa todos os testes com o navegador chrome: em headless:
```
bundle exec cucumber ENV=prod -p prod_headless
```

- Obs: Parametros "-p" são configurados no cucumber.yml na raiz do projeto. Pode-se customizar um unico parametro para executar varias funções. (Exemplo: "-p prod_chrome" salva um relatório de testes com o nome features.html na pasta logs, executa todos os cenários que possuem a tag "@all" e executa no navegador chrome)

####Executa os testes no ambiente:
```
ENV=prod ou ENV=qa
```

####Executar um cenário especifico:
```
-t @tag_do_cenario
```
- Obs: Se uma mesma tag estiver em mais de um cenário todos os cenários que possuem aquela tag serão executados(Exemplo: Tag "@all" executa todos os cenários e a tag "@login_username" executa um único cenário que é o de login usando o username.)

####Exemplo para executar o cenário de teste que possuí a tag
"@login_username" no ambiente de Prod com o chrome:
```
bundle exec cucumber -t @login_username ENV=prod -p chrome
```

####Report da execução dos testes em html:
```
Ao finalizar a execução dos testes é gerado um relatório em html que pode ser visto na pasta "logs" na raiz do projeto.
```

####Cenários de teste contemplados:
```
Na pasta features/specs estão os cenários de teste mapeados e que foram automatizados:

- Tentativa de cadastro
- Tentativa de login com username inexistente
- Tentativa de login com email inexistente
- Tentativa de login com senha incorreta
- Login com username
- Login com email
- Validar e-mail cadastrado
- Atualizar Name
- Atualizar Bio
- Atualizar URL
```