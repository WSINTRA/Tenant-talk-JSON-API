class PostReplySerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :post
  belongs_to :reply
end
