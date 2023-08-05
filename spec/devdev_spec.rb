require 'spec_helper'
require 'rspec'
require 'devdev'

describe DevDev do
  subject { DevDev }

  it 'should' do
    expect(subject.all.class).to eq Array
  end
end
