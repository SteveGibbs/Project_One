# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :text
#  top_facts  :text
#  highlights :text
#  image      :text
#  country_id :integer
#

class City < ActiveRecord::Base
  belongs_to :country
  has_and_belongs_to_many :tours
end
