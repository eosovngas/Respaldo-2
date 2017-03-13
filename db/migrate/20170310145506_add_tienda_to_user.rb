class AddTiendaToUser < ActiveRecord::Migration
  def change
    add_column :users, :tienda, :string
  end
end
