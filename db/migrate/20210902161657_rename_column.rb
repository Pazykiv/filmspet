# frozen_string_literal: true

class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :author_firstname, :author_first_name
    rename_column :movies, :author_lastname, :author_last_name
  end
end
