class CreateTreats < ActiveRecord::Migration
  def change
    create_table :treats do |t|
    	t.string :user_card_id
    end
  end
end
