require './lib/hiker'
require './lib/park'
require './lib/trail'
require 'rspec'

RSpec.describe Hiker do
  context 'instantiation' do
    it 'exists' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker).to be_instance_of(Hiker)
    end

    it 'has attributes' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker.name).to eq('Dora')
      expect(hiker.experience_level).to eq(:moderate)
    end

    it 'has no snacks and no parks visited by default' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker.snacks).to eq({})
      expect(hiker.parks_visited).to eq([])
    end
  end

  context 'methods' do
    it 'can pack a snack' do
      hiker = Hiker.new('Dora', :moderate)

      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)

      expect(hiker.snacks).to eq({'water' => 1, 'trail mix' => 3})
    end

    it 'can visit a park' do
      hiker = Hiker.new('Dora', :moderate)
      park1 = Park.new('Capitol Reef')
      park2 = Park.new('Bryce Canyon')

      hiker.visit(park1)
      hiker.visit(park2)

      expect(hiker.parks_visited).to eq([park1, park2])
    end
  end
end
