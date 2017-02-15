require 'rspec'
require 'rack/test'
require 'test/unit'

require_relative '../../app/routes/Hello.rb'
require_relative '../../app/models/Messages.rb'

describe 'Unit: Route: Hello' do
  include Rack::Test::Methods

  # messages = double(Messages, :dumbass => 'Fuck you ruby')

  def app
    Hello.new Messages.new
  end

  it 'says Dumbass Ruby!' do

    get '/hello'

    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World')

  end

end
