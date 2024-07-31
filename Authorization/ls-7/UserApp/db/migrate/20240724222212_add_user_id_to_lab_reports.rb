class AddUserIdToLabReports < ActiveRecord::Migration[7.2]
  def change
    add_reference :lab_reports, :user, null: false, foreign_key: true
  end
end
