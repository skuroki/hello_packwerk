require 'blog'

module Blog
  class EventPublisher
    include Dry::Events::Publisher[:blog]

    register_event('entries.created')

    class << self
      def publish(*args)
        instance.publish(*args)
      end

      def subscribe(*args)
        instance.subscribe(*args)
      end

      private

      def instance
        @instance ||= new
      end
    end
  end
end
