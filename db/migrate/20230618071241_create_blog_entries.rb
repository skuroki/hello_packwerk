class CreateBlogEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
