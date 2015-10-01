require 'spec_helper'

RSpec.describe Razoul::Token do
  before do
    Timecop.freeze(Time.now)
  end

  after do
    Timecop.return
  end

  let(:time_in_seconds) { Time.now.to_i }
  before :each do
    Razoul.configure do |config|
      config.login = 'Razoul'
      config.password = 'Razoul_AUTH'
    end
  end

  describe '#generate!' do
    subject { described_class.generate! }
    it  { is_expected.to be_truthy }
  end

  describe '#expired?' do

    context 'when expiration_time eql 1 minute' do
      subject { described_class.current_token.expired? }
      context 'when isn\'t expired' do
        it { is_expected.to eq false }
      end
    end

    context 'when expiration_time eql 1 second' do
      before do
        Razoul.configure do |config|
          config.expiration_time = 1
        end
      end
      context 'when is expired' do
        subject { described_class.current_token.expired? }
        it { is_expected.to eq true }
      end
    end
  end
end
