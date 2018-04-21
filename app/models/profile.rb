class Profile < ApplicationRecord
  belongs_to :user

  def full_address
    "#{premise}, #{thoroughfare}, #{city}, #{administrative_area}, #{postal_code}, #{country}"
  end

end
