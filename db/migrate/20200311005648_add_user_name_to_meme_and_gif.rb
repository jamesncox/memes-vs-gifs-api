class AddUserNameToMemeAndGif < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :username, :string
    add_column :gifs, :username, :string
  end
end
