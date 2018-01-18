require 'sinatra'

get '/' do
erb :index
end

post '/abuela' do
	@mensaje = params[:mensaje].to_s
	@mayuscula = @mensaje.upcase
	@minuscula = @mensaje.downcase

if params[:mensaje] && params[:mensaje]!="" #si mensaje existe y no está vacío
	if @mensaje == @mayuscula
	<<-HTML
	<h1>Ahhh si, manzanas!</h1>
	HTML
	elsif @mensaje == @minuscula
	<<-HTML
	<h1>Habla más duro mijito</h1>
	HTML
	end
end
end
