class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.integer :id
      t.string :url

      t.timestamps
    end
  end
end
