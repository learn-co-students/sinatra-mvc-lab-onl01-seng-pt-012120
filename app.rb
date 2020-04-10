require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @pigitized = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinize
    
  end
  
end
