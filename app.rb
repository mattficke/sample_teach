require 'sinatra'
require 'sinatra/reloader'

get "/" do
  "<h1>hello world</h1>"
end

get "/:name" do
  name = params[:name]
  "<h1>Hello #{name}</h1>"



end
