require 'rspec'

require_relative '../../app/models/Messages.rb'

describe 'Unit: Model: Messages' do

  it 'says Hello' do
    messages = Messages.new

    expect(messages.hello).to eq('Hello')
  end

  it 'says Dumbass Ruby!' do
    messages = Messages.new

    expect(messages.dumbass).to eq('Dumbass Ruby!')
  end

end
