require "sinatra"

class FormsSite < Sinatra::Base
  get "/" do
    erb :census
  end
end
