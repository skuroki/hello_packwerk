class Blog::Entry < ApplicationRecord
  after_create do
    Top::Notification.create! content: "記事「#{title}」が作成されました"
  end
end
