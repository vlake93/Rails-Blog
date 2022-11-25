class Comic < ApplicationRecord
  validates :name, presence: true
  validates :body, presence: true, length: {maximum: 100}

  belongs_to :comic
  

  def self.search(search)
    if search
      name = Comic.find_by(name: search)
      if name
        self.where(name: search)
      else
        @comics = Comic.all
      end
    else
      @comics = Comic.all
    end
  end
end
