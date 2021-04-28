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

  context 'methods' do
    it 'can add a trail' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
      park = Park.new('Capitol Reef')

      park.add_trail(trail1)
      park.add_trail(trail2)

      expect(park.trails).to eq([trail1, trail2])
    end
  end
end
