require 'sinatra'
require_relative './BaseRoute'
require_relative '../models/Messages'

class Hello < BaseRoute

  get '/dumbass' do
    Messages.new.dumbass
  end

  get '/buttons' do
    erb :buttons, :format => :html5
  end

  get '/' do
    erb :index, :format => :html5, :locals => { :todos => ['Lavar a roupa', 'Trocar o lixo', 'Dominar o mundo'] }
  end

end
