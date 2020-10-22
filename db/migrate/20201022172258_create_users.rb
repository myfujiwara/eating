class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.text :profile
      t.float :score
      t.text :reputation

      t.timestamps
    end
  end
end
