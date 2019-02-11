require "sinatra"

respuesta=""
get '/' do
erb :index
end

get '/answer' do
  @respuesta=respuesta
  erb :answer
end

post '/answer' do
respuesta=params[:respuesta]
redirect '/answer'
end
