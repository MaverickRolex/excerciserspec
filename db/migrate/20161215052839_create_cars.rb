class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :model_name
      t.integer :doors
      t.string :sub_model
      t.decimal :price
      t.integer :provider_id
      t.timestamps
    end
  end
end

#model_name has change for car_model in ChangeCarsModelName migration
