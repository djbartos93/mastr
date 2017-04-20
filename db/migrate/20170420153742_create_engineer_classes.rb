class CreateEngineerClasses < ActiveRecord::Migration
  def change
    create_table :engineer_classes do |t|
      t.integer :eC_id
      t.string :e_className
      t.text :class_desc
      t.boolean :enabled

      t.timestamps null: false
    end
  end
end
