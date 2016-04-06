class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.string :message
    	t.string :greeting
    	t.integer :template_id

      t.timestamps null: false
    end
  end
end
