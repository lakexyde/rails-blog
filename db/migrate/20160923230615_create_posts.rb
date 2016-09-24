class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :desc
      t.text :body
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
