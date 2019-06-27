# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.float :price
      t.string :name
      t.boolean :real
      t.float :weight
      t.string :description
      t.timestamps
    end
  end
end
