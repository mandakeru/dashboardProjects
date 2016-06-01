# == Schema Information
#
# Table name: projects
#
#  id            :integer          not null, primary key
#  head          :string
#  manager       :string
#  project_title :string
#  area          :integer
#  description   :text
#  representant  :string
#  sprints       :integer
#  status        :integer
#  resources_id  :integer
#  deadline      :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Project < ActiveRecord::Base
    
    belongs_to :manager
    
    has_many :sprints
    has_many :resources
    has_one :deadline
    
    
end
