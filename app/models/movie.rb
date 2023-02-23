class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :overview, :title, presence: true
  validates :title, length: { minimum: 1 }
  has_many :bookmarks
end

# Copy of fields #
# t.string :title
# t.string :overview
# t.string :post_url
# t.float :rating
