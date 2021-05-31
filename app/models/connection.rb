class Connection < ApplicationRecord
  belongs_to :article
  belongs_to :folder
end
