class Quote < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true

  scope :search, -> (name_parameter) { where("author like ?", "%#{name_parameter}%")}
end