class CreateTransitions < ActiveRecord::Migration[5.1]
  def change
    create_table :transitions do |t|
      t.integer :state_id, null: false
      t.string :key , null: false
      t.string :value , null: false

      t.timestamps
    end
  end
end
