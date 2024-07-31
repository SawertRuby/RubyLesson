# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  FirstName  :string
#  LastName   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :LabReport
  validates :FirstName, presence: true, length:{ maximum: 100}
  validates :LastName, presence: true, length:{ maximum: 100}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } ,  presence: true, length:{ maximum: 150}
end
