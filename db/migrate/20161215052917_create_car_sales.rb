class CreateCarSales < ActiveRecord::Migration[5.0]
  def change
    create_table :car_sales do |t|
      t.integer :seller_id
      t.integer :car_id
      t.timestamps
    end
  end
end
