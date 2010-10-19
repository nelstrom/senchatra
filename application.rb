require 'rubygems'
require 'sinatra'

helpers do
  def templates
    "list templates here"
  end
end

get '/' do
  erb :index
end
