class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  # validates that the movie id is unique within the scope of the list
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Already in list' }

  # has_many :lists, dependent: :destroy
  # has_many :movies, dependent: :destroy
end
