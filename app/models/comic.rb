class Comic < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true, length: {maximum: 100}
end
