# frozen_string_literal: true

class Position < ApplicationRecord
  belongs_to :cart
  belongs_to :item
end
