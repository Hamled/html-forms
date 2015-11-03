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
    password = params[:passcode]
    if @username == "potus@whitehouse.gov" &&
       password == "michelle2024"
      erb :account
    else
      @login_failed = true
      erb :login
    end
  end
end
