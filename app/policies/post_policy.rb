class PostPolicy < ApplicationPolicy

  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    true if user.present? && (is_owner? || is_admin?)
  end

  def destroy?
    true if user.present? && (is_owner? || is_admin?)
  end

  private

  # just a nice little namespace method
  def post
    record
  end

  def is_user?
    user == post.user
  end

  def is_admin?
    user.admin
  end
end
