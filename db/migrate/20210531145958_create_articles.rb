class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.string :note
      t.string :status
      t.integer :importance
      t.timestamp :reminder

      t.timestamps
    end
  end
end
