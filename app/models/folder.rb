class Folder < ApplicationRecord
  belongs_to :user
  has_many :articles, through: :connections
end
