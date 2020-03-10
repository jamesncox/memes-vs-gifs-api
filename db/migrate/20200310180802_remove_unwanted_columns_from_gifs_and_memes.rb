class RemoveUnwantedColumnsFromGifsAndMemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :gifs, :user_id
    remove_column :gifs, :caption_text
    remove_column :gifs, :caption_id
    remove_column :memes, :user_id
    remove_column :memes, :caption_text
    remove_column :memes, :caption_id
  end
end