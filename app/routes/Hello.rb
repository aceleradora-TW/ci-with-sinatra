require 'sinatra'
require_relative '../models/Messages'

class Hello < Sinatra::Base

  get '/hello' do
    Messages.new.dumbass
  end

end
