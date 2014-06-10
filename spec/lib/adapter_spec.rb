require 'spec_helper'

describe 'invoking of event' do
  let(:invoker)    { double('invoker') }
  let(:listener)   { double('listener') }
  let(:publisher)  { publisher_class.new }
  let(:event_name) { 'it_happened' }

  it 'is invoked' do
    allow(listener).to receive(event_name)
    publisher.add_listener(listener, :invoker => invoker)
    expect(invoker).to receive('invoke')
    publisher.send(:broadcast, event_name)
  end
end
