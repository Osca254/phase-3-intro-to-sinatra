require 'sinatra'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end
  get '/potato' do
    "<p>Boil 'em, mash 'em, stick 'em in a stew</p>"
  end
  get '/multiply/:numa1/:numa2' do
    "Hello World"
  end

  set :default_content_type,'application/json'
  get '/dice' do
    dice_roll == rand(1..6)
    {roll: dice_roll}.to_json
  end
  get '/add/1/2' do
    sum = 1 + 2
    {result: sum}.to_json
end
  get '/add/:num1/:num2' do 
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    num1 = 4
    num2 = 23
    sum = num1 + num2
  {result: sum}.to_json
end
 

#   get '/multiply/:numa1/:numa2' do
#     numa1 = params[:numa1].to_i
#     numa2 = params[:numa2].to_i
#     numa1 = 28
#     numa2 = 23
#     product = numa1 * numa2
#     {results: product}.to_json
  
# end
# get '/games/:id' do
#   game = Game.find(params[:id])
#   game.to_json
# end
end

run App
