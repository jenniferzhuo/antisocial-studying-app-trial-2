# == Schema Information
#
# Table name: visits
#
#  id          :integer          not null, primary key
#  check_out   :boolean          default(FALSE)
#  purpose     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#  visitors_id :integer
#

class Visit < ApplicationRecord
end
