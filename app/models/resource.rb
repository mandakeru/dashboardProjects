# == Schema Information
#
# Table name: resources
#
#  id         :integer          not null, primary key
#  name       :string
#  function   :string
#  alocation  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Resource < ActiveRecord::Base
    
    belongs_to :project
    
    has_many :tasks
    
end
