class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.date :fecha
      t.time :horario

      t.timestamps null: false
    end
  end
end
