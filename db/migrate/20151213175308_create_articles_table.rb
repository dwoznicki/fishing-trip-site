class CreateArticlesTable < ActiveRecord::Migration
  def change
  	t.string :title
  	t.text :body
  	t.string :author

  	t.timestamps(null: false)
  end
end
