require "sinatra/base"
require "capybara"

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

end
