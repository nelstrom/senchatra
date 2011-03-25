require 'rubygems'
require 'sinatra'

helpers do
  def templates
    Dir.glob("templates/**").map do |template|
      name = File.basename(template, ".html")
      content = open(template).read
      "<textarea id='#{name}' class='x-hidden-display'>#{content}</textarea>"
    end.join("\n")
  end

  def link_scripts
    sources = ["public/lib/sencha-touch.js"]
    sources += Dir.glob("public/app/*.js")
    %w{models stores views controllers}.each do |layer|
      sources += Dir.glob("public/app/#{layer}/**")
    end

    sources.map do |file|
      source = file.sub('public/', '')
      "<script src='#{source}' type='text/javascript'></script>"
    end.join("\n  ")
  end

end

get '/' do
  erb :index
end
