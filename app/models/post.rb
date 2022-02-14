class Post < ApplicationRecord

  include Authorship
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, as: :commentable
  end
