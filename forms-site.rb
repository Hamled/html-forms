require "sinatra"

class FormsSite < Sinatra::Base
  get "/" do
    erb :census
  end

  get "/login" do
    erb :login
  end

  post "/login" do
    @username = params[:email]
    erb :account
  end
end
