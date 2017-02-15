require './app/routes/Hello.rb'
require './app/models/Messages.rb'

messages = Messages.new
route = Hello.new messages

run route
