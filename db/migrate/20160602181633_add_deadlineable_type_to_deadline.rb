class AddDeadlineableTypeToDeadline < ActiveRecord::Migration
  def change
    add_column :deadlines, :deadlineable_type, :string
  end
end
