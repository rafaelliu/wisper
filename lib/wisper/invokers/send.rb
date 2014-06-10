module Wisper
  module Invokers
    class Send
      def invoke(listener, publisher, method_to_call, args)
        listener.public_send(method_to_call, *args)
      end
    end
  end
end
