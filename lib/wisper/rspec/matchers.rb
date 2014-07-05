require 'rspec/expectations'

module Wisper
  module Rspec
    class EventRecorder
      def initialize
        @broadcast_events = []
      end

      def respond_to?(method_name)
        true
      end

      def method_missing(method_name, *args, &block)
        @broadcast_events << method_name.to_s
      end

      def broadcast?(event_name)
        @broadcast_events.include?(event_name.to_s)
      end
    end

    module BroadcastMatcher
      class Matcher
        def initialize(event)
          @event = event
        end

        def supports_block_expectations?
          true
        end

        def matches?(block)
          event_recorder = EventRecorder.new

          Wisper.with_listeners(event_recorder) do
            block.call
          end

          event_recorder.broadcast?(@event)
        end

        # TODO: chained expection:
        # expect { publisher.execute }.to broadcast(:an_event).with_args(:a, :b)
        def with_args(*args)
          # ...
        end
      end

      def broadcast(event)
        Matcher.new(event)
      end
    end
  end
end
