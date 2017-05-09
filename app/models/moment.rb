class Moment < ApplicationRecord

  belongs_to :user
    validates :description, presence: true, length: { minimum: 25}
    validates :name, presence: true
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
