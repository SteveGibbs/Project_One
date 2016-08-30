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

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
