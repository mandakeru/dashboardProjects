# == Schema Information
#
# Table name: issues
#
#  id          :integer          not null, primary key
#  title       :string
#  type        :integer
#  description :text
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Issue < ActiveRecord::Base
    extend Enumerize
    
    belongs_to :sprint
    
    enumerize :type, in: { bug: 1, issue: 2}
    
    
    
end
