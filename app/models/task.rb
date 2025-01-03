class Task < ApplicationRecord
  belongs_to :list

  validates :name, presence: true
  validates :description, length: { maximum: 500 }, allow_blank: true

  before_save :set_due_date_to_today_if_past

  private

  def set_due_date_to_today_if_past
    if due_date.present? && due_date < Date.today
      self.due_date = Date.today  # Define a data de validade como o dia atual
    end
  end
end
