class Order < ApplicationRecord
  attr_accessable :user, :user_id
  belong_to :user
end
