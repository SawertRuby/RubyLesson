class CreateLabReports < ActiveRecord::Migration[7.2]
  def change
    create_table :lab_reports do |t|
      t.string :title
      t.string :description
      t.string :grade

      t.timestamps
    end
  end
end
