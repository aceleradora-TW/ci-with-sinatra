require 'rack/test'

require_relative '../../../app/routes/Hello.rb'

describe 'Unit: Route: Hello' do
  include Rack::Test::Methods

  def app
    Hello.new
  end

  it 'says Dumbass!' do

    allow_any_instance_of(Messages).to receive(:dumbass).and_return('Dumbass')

    get '/dumbass'

    expect(last_response).to be_ok
    expect(last_response.body).to eq('Dumbass')

  end

end
