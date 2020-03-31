class CreateCartDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_details do |t|
      t.integer :cart_id
      t.integer :product_id
      t.integer :quantity
      t.timestamps
    end
  end
end
