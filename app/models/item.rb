# frozen_string_literal: true

class Item < ApplicationRecord
  validates_presence_of :name, :description
end
