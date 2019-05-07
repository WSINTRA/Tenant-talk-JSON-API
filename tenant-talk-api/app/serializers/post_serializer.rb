class PostSerializer < ActiveModel::Serializer
  attributes :id, :message, :category
  	belongs_to :user

end
