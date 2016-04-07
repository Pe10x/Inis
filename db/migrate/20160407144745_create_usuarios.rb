class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :numero

      t.timestamps null: false
    end
  end
end
