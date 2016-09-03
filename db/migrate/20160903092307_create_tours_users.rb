class CreateToursUsers < ActiveRecord::Migration
  def change
    create_table :tours_users do |t|
      t.integer :tour_id
      t.integer :user_id
    end
  end
end
