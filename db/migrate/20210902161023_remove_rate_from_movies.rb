# frozen_string_literal: true

class RemoveRateFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :rate
  end
end
