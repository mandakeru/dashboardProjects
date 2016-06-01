# == Schema Information
#
# Table name: sprints
#
#  id           :integer          not null, primary key
#  initial_date :date
#  final_date   :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Sprint < ActiveRecord::Base
    
    belongs_to :project
    
    has_many :issues
    
    
end
