class LabReport < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length:{ maximum: 250}
  validates :description, presence: true, length:{ maximum: 500}

  GRADES = %w[A B C D E FX F]
  validates :grade, presence: true, inclusion: { in: GRADES }
end
