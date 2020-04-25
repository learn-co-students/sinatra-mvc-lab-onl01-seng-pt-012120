require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
  
  get "/" do 
    erb :user_input
  end
  
  post "/piglatinize" do
    the_text = params[:user_phrase]
    @pig_text = PigLatinizer.new.piglatinize(the_text)
    erb :results
  end
end