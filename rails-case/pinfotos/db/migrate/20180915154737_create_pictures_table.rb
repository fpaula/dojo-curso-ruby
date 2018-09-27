class CreatePicturesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :author
      t.string :author_url
      t.string :post_url

      t.timestamps
    end
  end
end
