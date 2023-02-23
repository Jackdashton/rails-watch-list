class List < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 1 }
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  # associated of list reaching movies, through bookmarks
end
