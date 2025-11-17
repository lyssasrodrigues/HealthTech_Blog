class AddUserToArticles < ActiveRecord::Migration[8.1]
  def change
    add_reference :articles, :user, null: false, foreign_key: true, default: 2
  end
end
