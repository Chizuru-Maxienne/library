class BookType < ActiveRecord::Base
  validates :category, presence: true,
                      uniqueness: true
end
