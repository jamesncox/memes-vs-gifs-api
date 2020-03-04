class AddUserIdToCaptionJoins < ActiveRecord::Migration[5.2]
  def change
    add_column :caption_joins, :user_id, :integer
  end
end
