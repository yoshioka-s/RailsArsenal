class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.int :upvote
      t.timestamps null: false
    end
  end
end
