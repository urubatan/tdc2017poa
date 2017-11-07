class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :headline
      t.text :body
      t.belongs_to :author, foreign_key: false

      t.timestamps
    end
  end
end
