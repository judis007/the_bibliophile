class Book < ApplicationRecord
    has_one_attached :thumbnail
    belongs_to :seller
    belongs_to :category

    # validates :name, :amount, presence: true
    # validates :name, length: { minimum: 0, maximum: 50 }
    # validates :amount, length: { minimum: 0, maximum: 8 }

    before_save :make_it_downcase

    def make_it_downcase
        self.name.downcase!
    end
end