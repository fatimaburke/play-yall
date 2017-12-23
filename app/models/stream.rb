class Stream < ApplicationRecord
  belongs_to :user

  validates :title, presence: true,
                    length: { minimum: 3 }

  has_many :messages, dependent: :destroy

  has_attached_file :thumbnail, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
end
