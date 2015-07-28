require 'spec_helper'

RSpec.describe Razoul::Persistence::Database do
  let(:database)  { described_class.new }

  describe "#conn" do
    subject { database.conn } 
    its(:ping) { is_expected.to eq 'PONG' }
  end
end
