require_relative 'config/environment'

class App < Sinatra::Base

   configure do
      enable :sessions
      set :session_secret, "super_lame_session_secret"
   end

   get "/" do
      erb :index    
   end

   post "/checkout" do
      @session = session[:item] = params[:item]
      erb :checkout
   end

end