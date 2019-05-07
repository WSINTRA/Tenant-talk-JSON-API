class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :message
      t.belongs_to :user, index: true
    
      t.timestamps
    end
  end
end
