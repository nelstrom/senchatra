require 'rubygems'
require 'sinatra'

helpers do
  def templates
    templates = []
    Dir.glob("templates/**").each do |template|
      name = File.basename(template, ".html")
      content = open(template).read
      templates << "<textarea id='#{name}' class='x-hidden-display'>#{content}</textarea>"
    end
    templates.join("\n")
  end
end

get '/' do
  erb :index
end
