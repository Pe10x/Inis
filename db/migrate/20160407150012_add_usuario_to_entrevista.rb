class AddUsuarioToEntrevista < ActiveRecord::Migration
  def change
    add_reference :entrevista, :usuario, index: true, foreign_key: true
  end
end
