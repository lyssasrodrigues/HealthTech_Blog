class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.string :category
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
