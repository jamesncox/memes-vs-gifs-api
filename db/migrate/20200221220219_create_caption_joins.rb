class CreateCaptionJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :caption_joins do |t|
      t.integer :caption_id
      t.integer :captionable_id
      t.string :captionable_type

      t.timestamps
    end
    add_index :caption_joins, [:captionable_id, :captionable_type]
  end
end
