class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
    	t.string :image

      t.timestamps null: false
    end
  end
end
