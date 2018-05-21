class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "english", "italian", "japanese", "french", "belgian"] }
end
