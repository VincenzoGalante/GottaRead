class ChangeStatusColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :status, :string, default: "to read"
  end
end
