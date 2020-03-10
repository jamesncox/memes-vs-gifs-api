class AddUserIdCaptionCaptionTextToGif < ActiveRecord::Migration[5.2]
  def change
    add_column :gifs, :user_id, :integer
    add_column :gifs, :caption_text, :text 
    add_column :gifs, :caption_id, :integer 
  end
end
