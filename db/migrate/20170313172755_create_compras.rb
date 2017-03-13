class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :user_id
      t.integer :almuerzo_id

      t.timestamps null: false
    end
  end
end
