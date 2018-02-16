class Article < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true
# связи сущьностей
	has_many :comments
end
