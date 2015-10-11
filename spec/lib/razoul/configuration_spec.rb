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

  describe '#database' do
    subject { instance }
      its(:database) { is_expected.to eq  'redis' }
  end

  describe '#database=' do
    it 'can set value' do
      instance.database  =  'redis'
      expect(instance.database).to eq 'redis'
    end
  end

  describe '#token_key' do
    subject { instance }
      its(:token_key) { is_expected.to eq  'RAZOUL_AUTH_KEY' }
  end

  describe '#token_key=' do
    it 'can set value' do
      instance.token_key  =  'RAZOUL_KEY'
      expect(instance.token_key).to eq 'RAZOUL_KEY'
    end
  end

  describe '#expiration_time' do
    subject { instance }
      its(:expiration_time) { is_expected.to eq  60 }
  end

  describe '#expiration_time=' do
    it 'can set value' do
      instance.expiration_time  =  45
      expect(instance.expiration_time).to eq 45
    end
  end
end

