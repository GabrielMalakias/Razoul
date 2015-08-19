require 'spec_helper'

RSpec.describe Razoul::AuthenticationController do
  specify { expect(described_class.new).to be_a_kind_of ActionController::Base }

  before do
    get :authenticate!
  end

  describe '#auth' do
    expect(response).to eq 'test'
  end

end

