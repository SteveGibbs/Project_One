# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  title             :string
#  first_name        :string
#  last_name         :string
#  email             :string
#  dob               :date
#  gender            :string
#  contact_number    :integer
#  address_line_1    :string
#  address_line_2    :string
#  suburb            :string
#  state             :string
#  postcode          :string
#  diet              :text
#  medical_condition :text
#  admin             :boolean          default(FALSE)
#  password_digest   :text
#

class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :tours
end
