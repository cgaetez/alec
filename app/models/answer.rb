class Answer < ActiveRecord::Base
  belongs_to :student
  belongs_to :homework
  belongs_to :page
end
