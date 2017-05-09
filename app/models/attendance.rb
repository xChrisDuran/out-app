class Attendance < ApplicationRecord
  belongs_to :moment
  belongs_to :user
end
