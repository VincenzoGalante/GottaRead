class Folder < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  has_many :articles, through: :connections, dependent: :destroy

end
