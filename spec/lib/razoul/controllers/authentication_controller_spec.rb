require 'spec_helper'

RSpec.describe Razoul::AuthenticationController, type: :controller do
  specify { expect(described_class.new).to be_a_kind_of ActionController::Base }
  let(:instance) { described_class.new }
  let(:request_double) { double }
  let(:request_hash)  do
    {"HTTP_#{Razoul.configuration.token_key}" => 'ADDSSDFSFSF' }
  end

  describe '#authenticate' do
    before do
      allow(request_double).to receive(:headers).and_return(request_hash)
      allow(instance).to receive(:request).and_return(request_double)
      allow(Razoul::Token).to receive(:valid_token?).and_return(true)
    end

    context 'when has a valid token' do
      it 'dont call render_error ' do
        expect(instance).to receive(:render_error).never
        instance.authenticate!
      end
    end

    context 'when hasnt a valid token' do
      before do
        allow(Razoul::Token).to receive(:valid_token?).and_return(false)
      end

      it 'call render_error ' do
        expect(instance).to receive(:render_error).once
        instance.authenticate!
      end
    end
  end

end

