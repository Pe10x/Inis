class AddDerivacionToEntrevista < ActiveRecord::Migration
  def change
    add_reference :entrevista, :derivacion, index: true, foreign_key: true
  end
end
