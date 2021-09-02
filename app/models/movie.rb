class Movie < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :author_firstname, presence: true
end
