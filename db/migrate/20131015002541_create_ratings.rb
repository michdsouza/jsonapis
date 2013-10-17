class CreateRatings < ActiveRecord::Migration
  def change

  	create_table :ratings do |t|
      t.integer :movie_id
      t.integer :user_id
      t.decimal :rating
 			
      t.timestamps
    end

  end
end
