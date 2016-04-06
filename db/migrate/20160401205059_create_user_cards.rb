class CreateUserCards < ActiveRecord::Migration
  def change
    create_table :user_cards do |t|
    	t.integer :user_id
    	t.integer :card_id
      # t.string :type
      # t.string :message
      # t.string :title
      
      t.timestamps null: false
    end
  end
end
