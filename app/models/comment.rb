class Comment < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true
  #принадлежит к статье
  belongs_to :article
end
