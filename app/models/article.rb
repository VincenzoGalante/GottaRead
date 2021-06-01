class Article < ApplicationRecord
  has_many :folders, through: :connections
  enum status: { to_read: 0, done: 1, missed: -1 }
  validates :url, presence: true
  validates :title, presence: true
  validates :status, presence: true
  validates :importance, numericality: { :greater_than_or_equal_to 0 }
  validates :importance, numericality: { :less_than_or_equal_to 5 }
end
