class AddColorToFolder < ActiveRecord::Migration[6.0]
  def change
    add_column :folders, :color, :string
  end
end
