require 'rubygems'
require 'sinatra'

get '/' do
  "Hello World"
end

get '/about' do
  'A little more about me.'
end

get '/hello/:name/:city/*' do

  "hello there #{params[:name]} from the city of #{params[:city]} in the splat #{params[:splat]}"
end

get '/form' do
  erb :form
end

post '/form' do
  "You just posted #{params[:message]}"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  "Secret Reversed: #{params[:secret].reverse}"
end

get '/decrypt/:word' do
  "Descrypted Message: #{params[:word].reverse}"

end

not_found do
halt 404, 'not found'
end
