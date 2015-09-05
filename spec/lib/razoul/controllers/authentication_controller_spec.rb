require 'spec_helper'

RSpec.describe Razoul::AuthenticationController, type: :controller do
  specify { expect(described_class.new).to be_a_kind_of ActionController::Base }


  describe '#authenticate' do
    subject { described_class.new.authenticate! }
    context 'when correct variables' do
      it { is_expected.to eq 'rtue' }
    end
  end

end

