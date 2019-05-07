class CreatePostReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :post_replies do |t|
      t.references :post, foreign_key: true
      t.references :reply, foreign_key: true

      t.timestamps
    end
  end
end
