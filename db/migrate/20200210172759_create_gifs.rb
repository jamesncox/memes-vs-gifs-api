class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.string :gif_id
      t.string :url

      t.timestamps
    end
  end
end
