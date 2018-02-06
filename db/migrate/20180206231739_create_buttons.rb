class CreateButtons < ActiveRecord::Migration[5.1]
  def change
    create_table :buttons do |t|
      t.integer :property_id , null: false
      t.integer :flow_id 
      t.string :transition_id
      t.string :text, null: false
      t.string :url

      t.timestamps
    end
  end
end
