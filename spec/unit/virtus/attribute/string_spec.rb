require 'spec_helper'

describe Virtus::Attribute::String do
  it_should_behave_like 'Attribute' do
    let(:attribute_name)        { :email }
    let(:attribute_value)       { 'red john' }
    let(:attribute_value_other) { :'red john' }
  end

  describe '#typecast' do
    let(:attribute)      { described_class.new(:name) }
    let(:value)          { 1 }
    let(:typecast_value) { '1' }

    subject { attribute.typecast(value) }

    it { should eql(typecast_value) }
  end
end
