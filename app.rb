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

# "onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay asway away oocowmay omingcay ownday alongway ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay"


# "<!doctype html>\n<html>\n  \n<head>\n  <title>Piglatinized</title>\n  \n</head>\n\n<body>\n\nonceway...y ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay  \n</body>\n  \n  \n</html>" to include "Onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay aswayaway oocowmay...sway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay"