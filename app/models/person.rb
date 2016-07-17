# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  birth      :date
#  phone      :string
#  cpf        :string
#  rg         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
end
