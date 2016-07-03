require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/acerca' do
  # page es un template agregado al mismo nivel de index.erb
  erb :page
end

get '/servicios/detalles/:servicio_id' do
  # capturamos el parametro "servicio_id"
  @param_passed = params[:servicio_id]
  erb :page
end

get '/servicios/?:servicio_id?' do
  @param_passed = params[:servicio_id]
  erb :page
end

#El filtrado se hace usando expresiones regulares
get /\A\/productos\/([0-9]+)\z/ do
  @param_passed = params['captures'].first
  erb :page
end
