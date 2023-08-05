require 'spec_helper'
require 'rspec'
require 'devdev'

describe DevDev do
  let!(:devdev) { described_class }

  describe '#cmd_array' do
    it 'returns an array' do
      expect(devdev.send(:cmd_array).class).to be Array
    end
  end
end
