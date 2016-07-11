# == Schema Information
#
# Table name: payments
#
#  id             :integer          not null, primary key
#  description    :string
#  value          :decimal(, )
#  payment_date   :date
#  payment_method :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Payment < ActiveRecord::Base
end
