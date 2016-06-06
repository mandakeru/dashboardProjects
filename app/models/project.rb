# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  head          :string
#  project_title :string
#  area          :integer
#  description   :text
#  representant  :string
#  sprints       :integer
#  status        :integer
#  resources_id  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  manager_name  :string
#

class Project < ActiveRecord::Base
    extend Enumerize
    
    belongs_to :manager
    
    has_many :sprints
    has_many :resources
    has_many :issues
    has_one :deadline, as: :deadlineable
    
    accepts_nested_attributes_for :sprints, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :resources, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :deadline, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :issues, allow_destroy: true, reject_if: :all_blank
    
    
    #validates :manager_name, :project_title, :description, :status, presence: true
    
    
    enumerize :status, in: { ativo: 0, em_espera: 1, cancelado: 2}
    
   
   
    
end
