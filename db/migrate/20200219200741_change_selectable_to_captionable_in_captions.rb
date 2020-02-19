class ChangeSelectableToCaptionableInCaptions < ActiveRecord::Migration[5.2]
  def change
    rename_column :captions, :selectable_id, :commentable_id 
    rename_column :captions, :selectable_type, :commentable_type
  end
end
