class CreateAlmuerzos < ActiveRecord::Migration
  def change
    create_table :almuerzos do |t|
      t.string :foto
      t.string :nombre
      t.string :descripcion
      t.integer :precio
      t.integer :stock

      t.timestamps null: false
    end
  end
end
