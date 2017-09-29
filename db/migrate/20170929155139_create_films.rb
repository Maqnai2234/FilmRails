class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.integer :rating
      t.text :description
      t.string :cover
      t.string :year

      t.timestamps null: false
    end
  end
end
