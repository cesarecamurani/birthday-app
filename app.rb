require "sinatra/base"
require "capybara"

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/datas' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/message'
  end

  get '/message' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :message
  end

# run! if app_file == $0

end
