class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.integer :flow_id, null: false
      t.string :component
      t.boolean :return 
      t.string :name , null: false
      t.string :image_url

      t.timestamps
    end
  end
end
