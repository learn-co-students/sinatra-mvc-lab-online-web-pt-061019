require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        
        erb :user_input
    end

    # post '/' do

    #      @phrase = PigLatinizer.new(params[:user_phrase])

    #      erb :user_phrase
    # end

    post '/piglatinize' do
       
        @phrase = PigLatinizer.new.piglatinize(params[:user_phrase])

        erb :user_phrase


    end



end

