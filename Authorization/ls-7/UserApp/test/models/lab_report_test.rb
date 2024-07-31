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
require "test_helper"

class LabReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
