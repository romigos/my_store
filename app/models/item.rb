# frozen_string_literal: true

class Item < ApplicationRecord
  validates_presence_of :name, :price, presence: true
  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable
    #has_one   :image, as: :imageable
end
