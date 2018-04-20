class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :user_id, :image_data, presence: true

  def like
    
  end

  def comment

  end

end
