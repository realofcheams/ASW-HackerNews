class Comment < ApplicationRecord
  belongs_to  :user, optional: true
  belongs_to  :contribution, optional: true
  has_many :replies, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates_presence_of :content
    
  def checkIfMine(username)
    username == user_id
  end
end

