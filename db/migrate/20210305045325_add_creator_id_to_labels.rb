class AddCreatorIdToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :creator_id, :integer
  end
end
