class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :p_id
      t.string :p_name
      t.text :p_desc
      t.string :p_creator
      t.string :engineer
      t.string :status
      t.boolean :accepted
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
