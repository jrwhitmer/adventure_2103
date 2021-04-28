require './lib/park'
require './lib/trail'
require 'rspec'

RSpec.describe Park do
  context 'instantiation' do
    it 'exists' do
      park = Park.new('Capitol Reef')

      expect(park).to be_instance_of(Park)
    end
  end
end
