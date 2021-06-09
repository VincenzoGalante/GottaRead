class Folder < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy
  has_many :articles, through: :connections
  has_one_attached :photo

  validates :title, presence: true
end
