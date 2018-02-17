class Flowunique < ActiveRecord::Migration[5.1]
  def change
    add_index :flows, :name, unique: true
  end
end
