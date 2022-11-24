class Comic < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true, length: {maximum: 100}

  belongs_to :title

  def self.search(search)
    if search
      title = name.find_by(name: search)
      if title
        self.where(name: title)
      else
        Comic.all
      end
    else
      Comic.all
    end
  end
end
