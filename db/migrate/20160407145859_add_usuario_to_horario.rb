class AddUsuarioToHorario < ActiveRecord::Migration
  def change
    add_reference :horarios, :usuario, index: true, foreign_key: true
  end
end
