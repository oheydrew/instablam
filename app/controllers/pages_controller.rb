class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def contact
  end

  def contact_email
    ContactMailer.send_email.deliver_now
    render :contact # in lieu of routing to contact/
  end
end
