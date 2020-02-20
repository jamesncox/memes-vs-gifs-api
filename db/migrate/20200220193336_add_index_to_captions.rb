class AddIndexToCaptions < ActiveRecord::Migration[5.2]
  def change
    add_index :captions, [:captionable_type, :captionable_id]
  end
end
