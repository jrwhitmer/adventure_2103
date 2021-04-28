require './lib/hiker'
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
end
