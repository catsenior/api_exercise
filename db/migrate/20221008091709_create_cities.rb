class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :city
      t.string :current_temp
      t.timestamps
    end
  end
end
