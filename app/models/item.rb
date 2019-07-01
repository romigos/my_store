# frozen_string_literal: true

class Item < ApplicationRecord
  validates_presence_of :name, :description
  has_and_belongs_to_many :carts
end
