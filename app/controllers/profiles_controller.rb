class ProfilesController < ApplicationController
  def show
    # redirect_to :root unless user_signed_in?

    @profile = current_user.profile

  end

  def edit
    @profile = Profile.find_or_initialize_by(user: current_user)
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    # if @profile.save
    #   flash[:notice] = 'New Profile Created'
    #   redirect_to root_path
    # else
    #   flash[:notice] = 'Profile Not Created'
    #   redirect_to back
    # end

  end

  def update
    @profile = current_user.profile

    if @profile.update(profile_params)
      flash[:notice] = 'New Profile Created'
      redirect_to profile_path
    else
      flash[:notice] = 'Please enter the required fields'
      redirect_to back
    end
  end

  def destroy

  end

  private

  def profile_params
    params.require(:profile).permit([
                                      :user_name,
                                      :first_name,
                                      :last_name,
                                      :website,
                                      :bio,
                                      :avatar_data,
                                      :country,
                                      :postal_code,
                                      :administrative_area,
                                      :city,
                                      :thoroughfare,
                                      :premise
                                    ])
  end

end