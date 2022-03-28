class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :author
      t.integer :width
      t.integer :height
      t.text :url
      t.text :download_url

      t.timestamps
    end
  end
end
