module Blog
  class Entry < ApplicationRecord
    after_create do
      EventPublisher.publish('entries.created', title:)
    end
  end
end
