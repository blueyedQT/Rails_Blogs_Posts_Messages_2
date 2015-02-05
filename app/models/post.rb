class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages, dependent: :destroy

  validates :title, :content, presence: true, length: { minimum: 2 }
end
