require './lib/hiker'
require 'rspec'

RSpec.describe Hiker do
  context 'instantiation' do
    it 'exists' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker).to be_instance_of(Hiker)
    end
  end
end
