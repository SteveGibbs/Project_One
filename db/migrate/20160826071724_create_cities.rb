class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.text    "name"
      t.text    "top_facts"
      t.text    "highlights"
      t.text    "image"
      t.integer "country_id"
    end
  end
end
