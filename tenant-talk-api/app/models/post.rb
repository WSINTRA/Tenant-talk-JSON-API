class Post < ApplicationRecord
	belongs_to :user
	has_many :post_replies
	has_many :replies, :through => :post_replies
end