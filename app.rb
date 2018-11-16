require "sinatra/base"
require "capybara"

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/datas' do

  end

  get '/message' do

  end



end
