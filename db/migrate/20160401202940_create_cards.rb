class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.string :greeting
    	t.string :message

      t.timestamps null: false
    end
  end
end
