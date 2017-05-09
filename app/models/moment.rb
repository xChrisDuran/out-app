class Moment < ApplicationRecord

  belongs_to :user
    validates :description, presence: true, length: { minimum: 25}
    validates :name, presence: true
  
end
