require 'sinatra'

class Hello < Sinatra::Base

  def initialize(messages)
    @messages = messages
  end

  get '/hello' do
    messages.dumbass
  end

end
