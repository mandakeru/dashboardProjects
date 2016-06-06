# == Schema Information
#
# Table name: deadlines
#
#  id                :integer          not null, primary key
#  initial_date      :date
#  final_date        :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  project_id        :integer
#  deadlineable_id   :integer
#  deadlineable_type :string
#

class Deadline < ActiveRecord::Base
    belongs_to :deadlineable, polymorphic: true
    
end
