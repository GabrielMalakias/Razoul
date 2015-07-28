require 'spec_helper'
RSpec.describe Razoul::Configuration do

  subject(:instance) { described_class.new } 

  describe '#token_prefix' do
    subject { instance } 
      its(:token_prefix) { is_expected.to eq  'Razoul_Auth' }
  end

  describe '#token_prefix=' do
    it 'can set value' do
      instance.token_prefix  =  'Razoul_Auth_Prefix'
      expect(instance.token_prefix).to eq 'Razoul_Auth_Prefix' 
    end
  end
end

