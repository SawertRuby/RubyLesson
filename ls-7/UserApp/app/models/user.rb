class User < ApplicationRecord
  has_many :LabReport
  validate :FirstName, presense: true, length:{ maximum: 100}
  validate :LastName, presense: true, length:{ maximum: 100}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
