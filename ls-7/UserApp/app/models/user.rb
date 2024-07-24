class User < ApplicationRecord
  has_many :LabReport
  validates :FirstName, presence: true, length:{ maximum: 100}
  validates :LastName, presence: true, length:{ maximum: 100}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } ,  presence: true, length:{ maximum: 150}
end
