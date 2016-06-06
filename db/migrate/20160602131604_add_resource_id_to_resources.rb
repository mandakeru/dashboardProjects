class AddResourceIdToResources < ActiveRecord::Migration
  def change
    add_column :resources, :resource_id, :integer
  end
end
