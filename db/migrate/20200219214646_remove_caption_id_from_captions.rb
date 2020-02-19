class RemoveCaptionIdFromCaptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :captions, :caption_id
  end
end
