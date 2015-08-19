require 'spec_helper'

RSpec.describe Razoul::Controller do
  specify { expect(described_class.new).to be_a_kind_of ActionController::Base }

  describe '#test' do
    it 'test' do
    end
  end

end
