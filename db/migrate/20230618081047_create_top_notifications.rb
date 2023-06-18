class CreateTopNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :top_notifications do |t|
      t.string :content

      t.timestamps
    end
  end
end
