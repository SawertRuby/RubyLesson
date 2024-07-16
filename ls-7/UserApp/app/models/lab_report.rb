class LabReport < ApplicationRecord
  belongs_to :user
  validate :Title, presense: true, length:{ maximum: 250}
  validate :Description, presense: true, length:{ maximum: 500}
end
