# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  description :text
#  resource_id :integer
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
    
    belongs_to :sprint
    belongs_to :resource
    
    enumerize :status, in: { completo: 1, aberto: 2}
    
    
end
