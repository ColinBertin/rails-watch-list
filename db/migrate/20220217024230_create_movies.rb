class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.text :poster_url
      t.integer :rating, default: 0

      t.timestamps
    end
  end
end