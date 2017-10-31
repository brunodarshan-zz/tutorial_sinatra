require "sinatra"
class Sinatra::Application
  get "/" do
    "Página principal!"
  end

  get "/about" do
    "About<br>App com SinatraRuby"
  end
end
