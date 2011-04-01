class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.string :short_description
      t.string :body
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
