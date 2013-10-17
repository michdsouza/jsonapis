class CreateMovies < ActiveRecord::Migration
  def change

  	create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.integer :runtime
      t.integer :genre_id
 			
      t.timestamps
    end

  end
end
