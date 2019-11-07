# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.text :title
      t.integer :rating

      t.timestamps
    end
  end
end
