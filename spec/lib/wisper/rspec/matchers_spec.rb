require 'spec_helper'
require 'wisper/rspec/matchers'

describe WisperMatchers::ShouldPublish do
  let(:publisher) do
    Class.new do
      include Wisper::Publisher

      def execute
        broadcast(:it_happened)
      end
    end.new
  end

  describe '#matches?' do
    it 'returns false when event not broadcast' do
      matcher = WisperMatchers::ShouldPublish.new(publisher, :it_happened)
      result = matcher.matches? { publisher }
      expect(result).to be_falsey
    end

    it 'returns true when event broadcast' do
      matcher = WisperMatchers::ShouldPublish.new(publisher, :it_happened)
      result = matcher.matches? { publisher.execute }

      expect(result).to be_truthy
    end
  end

  describe 'full example' do
    it 'expects event to be publisher when published' do
      expect(publisher).to publish_event(publisher, :it_happened)

      publisher.execute
    end
  end
end
