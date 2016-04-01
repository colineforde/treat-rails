class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
    	t.integer :card_id
    	t.string :image

      t.timestamps null: false
    end
  end
end
