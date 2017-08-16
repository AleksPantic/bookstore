class Book < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 10 }
end
