class AddPublicnessToLabels < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :publicness, :boolean, default: false
  end
end
