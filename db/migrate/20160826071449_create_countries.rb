class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.text :top_facts
      t.text :highlights
      t.text :weather
      t.text :image
    end
  end
end
