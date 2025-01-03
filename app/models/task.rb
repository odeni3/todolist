class Task < ApplicationRecord
  belongs_to :list
  validates :name, presence: true
  validates :description, length: { maximum: 500 }, allow_blank: true
end
