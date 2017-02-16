require 'sinatra'
require_relative '../models/Messages'

class Hello < Sinatra::Base

  get '/dumbass' do
    Messages.new.dumbass
  end

end
