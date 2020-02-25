class RenameMemeAndGifUrlToMemeUrlAndGifUrl < ActiveRecord::Migration[5.2]
  def change
    rename_column :memes, :url, :meme_url
    rename_column :gifs, :url, :gif_url
  end
end
