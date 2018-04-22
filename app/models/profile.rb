class Profile < ApplicationRecord
  belongs_to :user

  validates :user_name, :avatar_data, :thoroughfare, :city, :administrative_area, :postal_code, :country, presence: true

  def full_address
    address = ''
    address.concat "#{premise}, " unless premise.nil?
    address.concat "#{thoroughfare}, #{city}, #{administrative_area}, #{postal_code}, #{country}"
  end

  def coordinates
    "#{latitude},#{longitude}"
  end
end
