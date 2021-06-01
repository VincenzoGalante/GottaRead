class Connection < ApplicationRecord
  belongs_to :article
  belongs_to :folder
  validates :article_id, presence: true
  validates :folder_id, presence: true
end
