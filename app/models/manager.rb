# == Schema Information
#
# Table name: managers
#
#  id         :integer          not null, primary key
#  name       :string
#  function   :string
#  area       :string
#  boss       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Manager < ActiveRecord::Base
end
