require "sinatra"

class FormsSite < Sinatra::Base
  get "/" do
    erb :census
  end

  get "/login" do
    erb :login
  end
end
