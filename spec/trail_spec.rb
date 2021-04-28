require './lib/trail'
require 'rspec'

RSpec.describe Trail do
  context 'instantiation' do
    it 'exists' do
      trail = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail).to be_instance_of(Trail)
    end

    it 'has attributes' do
      trail = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail.name).to eq('Grand Wash')
      expect(trail.length).to eq('2.2 miles')
      expect(trail.level).to eq(:easy)
    end
  end

  it 'can convert length attribute to float' do
    trail = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

    expect(trail.length_to_float).to eq(2.2)
  end
end
