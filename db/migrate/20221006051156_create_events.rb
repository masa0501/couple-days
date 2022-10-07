class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title,          null: false
      t.text :content,          null: false
      t.datetime :start_time,   null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
