require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # user_word = params["user_phrase"]
    # word = PigLatinizer.new
    # @pig_latinized_word = word.piglatinize(user_word)

    @pig_latinized_word = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :results
  end
end