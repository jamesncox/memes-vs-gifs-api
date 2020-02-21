class RemoveCaptionableIdAndTypeFromCaptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :captions, :commentable_id
    remove_column :captions, :commentable_type
  end
end
