require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/public'


get '/' do
  erb :index
end

post '/' do
  @Nome = params[:nome]
  @Email = params[:email]
  @Mensagem = params[:mensagem]

  erb :mostrar_dados
end
