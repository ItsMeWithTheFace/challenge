class CreateJoinTableCartProduct < ActiveRecord::Migration[5.2]
  def change
    create_join_table :carts, :products do |t|
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true
    end
  end
end
