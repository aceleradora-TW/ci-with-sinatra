require 'sinatra'

class BaseRoute < Sinatra::Base

  enable :static
  set :views, File.join(File.dirname(__FILE__), '..', '/views')
  set :public_folder, File.join(File.dirname(__FILE__), '..', '/public')

end
