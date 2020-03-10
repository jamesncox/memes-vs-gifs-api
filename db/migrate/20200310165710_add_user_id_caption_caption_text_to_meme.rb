class AddUserIdCaptionCaptionTextToMeme < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :user_id, :integer
    add_column :memes, :caption_text, :text 
    add_column :memes, :caption_id, :integer 
  end
end
