class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.integer :price
      t.text :description
      t.text :requirement

      t.timestamps
    end
  end
end
