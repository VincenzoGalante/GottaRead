class Article < ApplicationRecord
  has_many :folders, through: :connections
end
