class AddDeadlineableIdToDeadline < ActiveRecord::Migration
  def change
    add_column :deadlines, :deadlineable_id, :integer
  end
end
