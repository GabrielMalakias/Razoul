require 'spec_helper'
RSpec.describe Razoul do
  describe '#configure' do
    before do
      Razoul.configure do |config|
        config.test = 'init'
      end
    end
  end
end
