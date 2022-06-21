class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  scope :search, -> (name_parameter) { where("author ilike ?", "%#{name_parameter}%")}
end