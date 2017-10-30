# Iniciando com sinatra

Recentemente publiquei um texto sobre meu incomodo com o desenvolvimento Ruby on Rails e todo o hipe existente no mesmo. Com isso decidi "retroceder um pouco" e reinventar a roda para tentar ser um desenvolvedor ruby melhor e para isso vou utilizar o modesto, mas imponente [Sinatra](http://www.sinatrarb.com/).


## O amigo terminal

Para demostrar a facilidade com a qual o sinatra pode ser implementado em um caso de uso  simples. Vamos recorrer ao IRB.

```Ruby
require "sinatra"
App = Sinatra::Application
App.get '/' do "La la la!" end
App.run!

#GET http://localhost:4567/
# La la la!
```

Apesar do exemplo ridiculo é possível ver as possibilidades de uso que o Sinatra proposciona de forma facilitada. Deixando a cargo do programador estruturar seu código e usar o que lhe convem para um desenvolvimento simples e porque não libertador.

...Ainda em contrução.

