# == Schema Information
#
# Table name: deadlines
#
#  id           :integer          not null, primary key
#  initial_date :date
#  final_date   :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Deadline < ActiveRecord::Base
    
    belongs_to :project
    belongs_to :sprint
    
    
end
