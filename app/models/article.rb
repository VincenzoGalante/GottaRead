class Article < ApplicationRecord
  has_many :folders, through: :connections
  validates :url, presence: true
  validates :title, presence: true
  validates :status, presence: true
end
