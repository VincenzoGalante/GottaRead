class Article < ApplicationRecord
  has_many :folders, through: :connections
  enum status: { to_read: 0, done: 1, missed: -1 }
end
