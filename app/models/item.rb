# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: {greater_than: 0, allow_nil: true}
  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable
    #has_one   :image, as: :imageable
end
