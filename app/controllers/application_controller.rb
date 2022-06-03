require 'sinatra/cors'
require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::Cors

  set :allow_origin, "*"
  set :allow_methods, "GET,HEAD,POST,PATCH,DELETE"
  set :allow_headers, "content-type,if-modified-since"
  set :expose_headers, "location,link"

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  before do
    content_type 'application/json'
  end

  get "/" do
    'Root Route'
  end

end
