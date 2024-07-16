class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

class UserLabs < ActiveRecord::Base
  def change
    create_table :Lab_report do |t|
      t.string :Title
      t.string :Description
      t.string :Grade
      t.timestamps 
    end
  end
  def change
    create_table :User do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Grand
      t.timestamps
    end
  end
end