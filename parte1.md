# Iniciando com sinatra

Recentemente publiquei um texto sobre meu incomodo com o desenvolvimento Ruby on Rails e todo o hipe existente no mesmo. Com isso decidi "retroceder um pouco" e reinventar a roda para tentar ser um desenvolvedor ruby melhor e para isso vou utilizar o modesto, mas imponente [Sinatra](http://www.sinatrarb.com/).


## Rodando no terminal

Para demostrar a facilidade com a qual o sinatra pode ser implementado em um caso de uso  simples. Vamos recorrer ao IRB.

```Ruby
require "sinatra"
App = Sinatra::Application
App.get '/' do "La la la!" end
App.run!

#GET http://localhost:4567/
# La la la!
```

Apesar de simples, o exemplo demonstra com precisão as possibilidades de uso que o Sinatra proposciona de forma facilitada. Deixando a cargo do programador estruturar seu código e usar o que lhe convem para um desenvolvimento simples e porque não libertador.

## Criando uma aplicação de fato

Vamos desenvolver um app simples para renderizar algumas views. Para isso vamos utilizar a seguinte organização de path:

```
├── app.rb ## Aplicação de fato
└── Gemfile ## Gerente de dependencias
```
Nosso Gemfile servirá como base para dependencias de aplicativo, tanto para ambiente de desenvolvimento, teste e produção. Por agora, nosso Gemfile contém somente uma linha: `gem "sinatra"`, o suficiente por enquanto, para criarmos nossa mágica.

Em nosso `app.rb`, segue o seguinte código.

```Ruby
require "sinatra"
class Sinatra::Application
  get "/" do
    "Página principal!"
  end

  get "/About" do
    "About<br>App com SinatraRuby"
  end
end
```
Como as classes em Ruby estão sempre abertas para adição de métodos, sejá ela padrão ou criadas por nós, preferi usar a classe base de aplicações Sinatra. Nela, temos disponíveis os métodos inclusos das classes Base, Templates, Helpers. No seu terminal rode o comando `ruby app.rb` e veja o seu primeiro app rodando.

## Links Relacionados

- [Sinatra::Application](http://www.rubydoc.info/github/sinatra/sinatra/Sinatra/Application)
- [Classes abertas em Ruby](https://guru-sp.github.io/tutorial_ruby/classes-abertas-em-ruby.html)

[Próximo > Configurando Aplicação](parte2.md)
