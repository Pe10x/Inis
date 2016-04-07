class CreateDerivacions < ActiveRecord::Migration
  def change
    create_table :derivacions do |t|
      t.string :observacion

      t.timestamps null: false
    end
  end
end
