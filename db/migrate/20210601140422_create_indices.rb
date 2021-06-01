class CreateIndices < ActiveRecord::Migration[6.0]
  def change
    create_table :indices do |t|
      t.string :create

      t.timestamps
    end
  end
end
