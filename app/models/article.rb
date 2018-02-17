class Article < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true
	validates_associated :comments
# связи сущьностей
	has_many :comments
end
