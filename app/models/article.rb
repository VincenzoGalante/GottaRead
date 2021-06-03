class Article < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy
  has_many :folders, through: :connections
  enum status: { to_read: 0, done: 1, missed: -1 }
  validates :url, presence: true
  validates :title, presence: true
  validates :status, presence: true
  validates :importance, numericality: { in: 0..5, only_integer: true }
end
