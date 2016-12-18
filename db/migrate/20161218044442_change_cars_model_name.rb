class ChangeCarsModelName < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :model_name
    add_column :cars, :car_model, :string
  end
end
