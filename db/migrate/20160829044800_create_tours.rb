class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.text    "name"
      t.text    "theme"
      t.text    "duration"
      t.text    "top_facts"
      t.text    "highlights"
      t.text    "image"
      t.integer "price"
      t.date    "start_date"
      t.date    "end_date"

    end
  end
end
