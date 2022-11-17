class BlogApp < ApplicationRecord
  validates :title, :name, :about, presence: true
end
