require 'devdev'
require 'rspec'
require 'spec_helper'

describe DevDev do
  context 'when executing devdev' do
    describe '#all' do
      let(:option_all) { system('devdev all') }
      let(:flag_a) { system('devdev -a') }

      it 'will execute all and return true when option all is passed' do
        expect(option_all).to be true
      end

      it 'will execute all and return true when flag -a is passed' do
        expect(flag_a).to be true
      end
    end
  end
end
