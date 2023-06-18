require 'top'

module Top
  class BlogEventHandler
    def on_entries_created(event)
      Notification.create!  content: "記事「#{event[:title]}」が作成されました"
    end
  end
end
