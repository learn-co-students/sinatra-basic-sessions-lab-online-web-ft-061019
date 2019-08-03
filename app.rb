require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "hotdog"
    end 

    get '/' do 
        erb :index
    end 

    post '/checkout' do
        session["item"] = "socks"
        @session = session 
    end 
end