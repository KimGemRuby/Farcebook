class CreatePostsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :city
      
      t.timestamps
    end
    #add_reference :posts, :user, foreign_key: true
  end
end

