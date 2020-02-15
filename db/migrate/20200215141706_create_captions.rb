class CreateCaptions < ActiveRecord::Migration[5.2]
  def change
    create_table :captions do |t|
      t.integer :caption_id
      t.text :text
      t.string :rating
      t.integer :selectable_id
      t.string :selectable_type

      t.timestamps
    end
  end
end
