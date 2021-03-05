class AddCreatorIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :creator_id, :integer
  end
end
