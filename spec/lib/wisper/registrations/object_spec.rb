require 'spec_helper'

describe Wisper::ObjectRegistration do

  describe 'invoker' do
    it 'defaults to Send' do
      subject = Wisper::ObjectRegistration.new(double('listener'), {})
      expect(subject.invoker).to be_instance_of(Wisper::Invokers::Send)
    end

    it 'default is lazily evaluated' do
      expect(Wisper::Invokers::Send).to_not receive :new
      Wisper::ObjectRegistration.new(double('listener'), invoker: double('invoker'))
    end
  end
end
