class CreatePosts < ActiveRecord::Migration
  def change

  	create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :tags
      t.integer :category_id
      t.integer :user_id
 			
      t.timestamps
    end

  end
end
