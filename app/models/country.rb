# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string
#  top_facts  :text
#  highlights :text
#  weather    :text
#  image      :text
#

class Country < ActiveRecord::Base
  has_many :cities
end
