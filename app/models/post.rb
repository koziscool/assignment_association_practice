class Post < ActiveRecord::Base

  before_destroy :update_join_table

  has_many  :comments,
            :dependent => :destroy

  belongs_to :category

  has_many  :post_authorings,
            class_name: 'UserPost'

  has_many  :authors,
            :through => :post_authorings,
            source: :user

  has_many  :post_taggings,
            class_name: 'PostTag'

  has_many  :tags,
            :through => :post_taggings

  accepts_nested_attributes_for :comments,
                                :allow_destroy => true,
                                :reject_if => :all_blank

private
  def update_join_table
    self.post_authorings.destroy
  end


end
