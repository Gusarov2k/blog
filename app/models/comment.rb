class Comment < ApplicationRecord
  #принадлежит к статье
  belongs_to :article
end
