# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :string
#  category   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
  validates :address, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => { :case_sensitive => false }
end
