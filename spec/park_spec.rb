require './lib/park'
require './lib/trail'
require 'rspec'

RSpec.describe Park do
  context 'instantiation' do
    it 'exists' do
      park = Park.new('Capitol Reef')

      expect(park).to be_instance_of(Park)
    end

    it 'can return its name' do
      park = Park.new('Capitol Reef')

      expect(park.name).to eq('Capitol Reef')
    end

    it 'has no trails by default' do
      park = Park.new('Capitol Reef')

      expect(park.trails).to eq([])
    end
  end
end
