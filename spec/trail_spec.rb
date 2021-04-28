require './lib/trail'
require 'rspec'

RSpec.describe Trail do
  context 'instantiation' do
    it 'exists' do
      trail = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail).to be_instance_of(Trail)
    end
  end
end
