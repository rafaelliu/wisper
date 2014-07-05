require 'spec_helper'
require 'wisper/rspec/matchers'

RSpec::configure do |config|
  config.include(Wisper::Rspec::BroadcastMatcher)
end

describe 'example' do
  it 'to' do
    publisher = publisher_class.new
    expect { publisher.send(:broadcast, :foobar) }.to broadcast(:foobar)
  end

  it 'not to' do
    publisher = publisher_class.new
    expect { publisher }.not_to broadcast(:foobar)
  end
end
