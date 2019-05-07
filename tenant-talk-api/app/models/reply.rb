class Reply < ApplicationRecord
	belongs_to :user
	has_many :post_replies
	has_many :posts, :through => :post_replies
end



