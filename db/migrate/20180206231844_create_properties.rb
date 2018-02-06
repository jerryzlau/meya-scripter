class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.integer :state_id, null: false
      t.string :text
      t.string :output
      t.string :key
      t.string :scope

      t.timestamps
    end
  end
end
