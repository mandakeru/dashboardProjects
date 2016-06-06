# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  name        :string
#  function    :string
#  alocation   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :integer
#  project_id  :integer
#

class Resource < ActiveRecord::Base
    
    belongs_to :project
    belongs_to :sprint
    has_many :tasks
    
    validates :name, :function, presence: true
    validates :resource_id, presence: true, numericality: true, length: { is: 8 }, uniqueness: true
    
    accepts_nested_attributes_for :project, allow_destroy: true, reject_if: :all_blank
    
end
