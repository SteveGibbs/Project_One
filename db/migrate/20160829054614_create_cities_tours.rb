class CreateCitiesTours < ActiveRecord::Migration
  def change
    create_table :cities_tours do |t|
      t.integer :tour_id
      t.integer :city_id
    end
  end
end
