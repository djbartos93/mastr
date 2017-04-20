class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.integer :e_id
      t.string :full_name
      t.string :class
      t.boolean :enabled
      t.integer :accepted_projects
      t.string :status

      t.timestamps null: false
    end
  end
end
