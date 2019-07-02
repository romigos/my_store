# frozen_string_literal: true

class CreateCartsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :carts_items, id: false do |t|
      t.integer :carts_id
      t.integer :items_id
    end
  end
end
