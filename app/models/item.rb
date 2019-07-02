# frozen_string_literal: true

class Item < ApplicationRecord
  validates_presence_of :name, :description
  has_many :positions
  has_many :carts, through: :positions
  has_many :comments, as: :commentable
end
