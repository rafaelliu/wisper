require 'spec_helper'

describe Wisper::Invokers::Send do
  let(:listener)       { double('listener') }
  let(:method_to_call) { 'it_happended' }

  describe '#invoke' do
    context 'without arguments' do
      let(:args)     { [] }

      it 'sends event to listener' do
        expect(listener).to receive(method_to_call)#.with_no_args
        subject.invoke(listener, nil, method_to_call, args)
      end
    end

    context 'with arguments' do
      let(:args)     { [1,2,3] }

      it 'sends event to listener' do
        expect(listener).to receive(method_to_call)#.with_args(args)
        subject.invoke(listener, nil, method_to_call, args)
      end
    end
  end
end
