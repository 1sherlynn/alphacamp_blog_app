class Post < ApplicationRecord
	has_many :comments
	validates :title, presence: true

	has_many :post_taggings
  	has_many :tags, through: :post_taggings
	
end
