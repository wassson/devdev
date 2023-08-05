require 'spec_helper'
require 'rspec'
require 'devdev'

describe DevDev do
  context 'when executing devdev' do
    # describe "without options" do
    #   let!(:build) { system("devdev") }
    #
    #   it "will execute and return false" do
    #     expect(build).to be false
    #   end
    # end

    describe 'with build:all option' do
      let!(:build_all) { system('devdev build:all') }

      it 'will execute and return true' do
        expect(build_all).to be true
      end
    end
  end
end
