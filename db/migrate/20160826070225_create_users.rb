class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
          t.string :title
          t.string :first_name
          t.string :last_name
          t.string :email
          t.date :dob
          t.string :gender
          t.integer :contact_number
          t.string :address_line_1
          t.string :address_line_2
          t.string :suburb
          t.string :state
          t.string :postcode
          t.text :diet
          t.text :medical_condition
          t.boolean :admin, :default =>false
          t.text :password_digest
    end
  end
end
