# == Schema Information
#
# Table name: lab_reports
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  grade       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
class LabReport < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length:{ maximum: 250}
  validates :description, presence: true, length:{ maximum: 500}

  GRADES = %w[A B C D E FX F]
  validates :grade, presence: true, inclusion: { in: GRADES }
end
