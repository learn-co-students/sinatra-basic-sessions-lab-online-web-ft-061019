require_relative 'config/environment'

class App < Sinatra::Base

  configure do
      enable :sessions
      set :session_secret, "yep"
  end

   get '/' do
     erb :index
  end


   post '/checkout'do
      session[:item] = params[:item]
      @session = session
          # binding.pry

           erb :'/checkout'
  end

end
