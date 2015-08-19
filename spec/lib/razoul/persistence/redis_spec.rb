require 'spec_helper'

RSpec.describe Razoul::Persistence::Redis do
  let(:config) { Razoul.configuration }
  let(:class_name) { ::Redis }
  let(:connection) { described_class.configure(class_name, config) }

  describe '#hash_config_attrs' do
    subject { described_class.hash_config_attrs(config) }

    it { is_expected.to be_a_kind_of (Hash) }
    its(:keys) { is_expected.to eq [:host, :port, :db] }
  end

  describe '#configure' do
    context 'when success' do
      subject { described_class.configure(class_name, config) }
      it { is_expected.to be_a_kind_of(::Redis) }
    end
  end

  describe '#save' do
    let(:token_key)  { config.token_key }
    let(:value)      { "RAZOUL_TOKEN" }
    subject { described_class.save(connection, token_key, value) }
    it { is_expected.to eq "OK" }
  end

  describe '#find' do
    let(:key)   { 'ADASDSADASDAS' }
    subject { described_class.find(connection, key) }
    it { is_expected.to eq key }
  end
end
