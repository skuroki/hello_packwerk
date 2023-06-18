require 'blog/event_publisher'
require 'top/blog_event_handler'

Blog::EventPublisher.subscribe(Top::BlogEventHandler.new)
