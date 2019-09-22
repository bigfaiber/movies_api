class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string  :title
      t.string  :sinopsis
      t.string  :genre
      t.decimal :rating

      t.timestamps
    end
  end
end
