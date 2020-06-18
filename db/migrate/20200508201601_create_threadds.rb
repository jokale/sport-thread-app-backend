class CreateThreadds < ActiveRecord::Migration[6.0]
  def change
    create_table :threadds do |t|
      t.string :username
      t.date :date
      t.string :thread_title
      t.text :thread_body
      t.integer :user_id 


      t.timestamps
    end
  end
end
