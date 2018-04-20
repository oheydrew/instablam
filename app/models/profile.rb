class Profile < ApplicationRecord
  belongs_to :user

  def full_address
    "#{@profile.premise}, #{@profile.thoroughfare}, #{@profile.city}, #{@profile.administrative_area}, #{@profile.postal_code}, #{@profile.country_code}"
  end

end
