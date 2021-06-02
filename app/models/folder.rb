class Folder < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy
  has_many :articles, through: :connections

  validates :title, presence: true
end
