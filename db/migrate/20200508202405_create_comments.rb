class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.datetime :date
      t.text :comment_description
      t.integer :threadd_id
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
