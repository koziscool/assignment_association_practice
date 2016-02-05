class User < ActiveRecord::Base
  has_many :authored_comments, class_name: 'Comment'
  has_many :post_authorings, :class_name => 'UserPost'
  has_many :authored_posts, :through => :post_authorings, :source => :post
end
