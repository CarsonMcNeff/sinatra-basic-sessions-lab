require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions 
        set :session_secret, "026d0456e249c879299ef2e01b31341d2830079b762e7ba07ddf0a4367079ba8383aac3602f04c4d8a1ec588ad884bd8980d7e553b34112bb9c898e056411f22"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session 
        erb :checkout
    end

end