require 'spec_helper'
RSpec.describe Razoul::Configuration do

  context '.initialize' do
    context 'when valid file' do
      let(:config_file) {'spec/fixtures/razoul.yml'}
      specify { expect(described_class.new(config_file)).to be_kind_of Razoul::Configuration }
    end
  end

end
