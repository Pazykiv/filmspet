# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string     :title
      t.text       :description
      t.string     :author_firstname
      t.string     :author_lastname
      t.belongs_to :user
      t.integer    :rate, inclution: 0..10, default: 0

      t.timestamps
    end
  end
end
