require 'spec_helper'

RSpec.describe Razoul do
  describe '.reset' do
    before :each do
      Razoul.configure do |config|
        config.token_prefix = 'TEST'
      end
    end
    it 'reset the configuration' do
      Razoul.reset
      config  = Razoul.configuration
      expect(config.token_prefix).to eq 'Razoul_Auth'
    end

  end
  
  
  describe '.configure' do
    let(:persistence) { Razoul::Persistence.new }

    before do 
      Razoul.configure do |config|
        config.token_prefix = 'PREFIX_RAZOUL'
      end
    end

    context 'returns a token prefix' do
      subject { persistence }
      its(:'configuration.token_prefix') {  is_expected.to eq 'PREFIX_RAZOUL' }
    end
  end
end
