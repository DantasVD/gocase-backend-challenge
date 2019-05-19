class CreateSobreviventes < ActiveRecord::Migration[5.2]
  def change
    create_table :sobreviventes do |t|
      t.string :nome
      t.integer :idade
      t.string :genero
      t.float :last_latitude
      t.float :last_longitude
      t.integer :first_abducted_flag
      t.integer :second_abducted_flag
      t.integer :third_abducted_flag
      t.boolean :is_abducted

      t.timestamps
    end
  end
end
