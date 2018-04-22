class PostPolicy < ApplcationPolicy

  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    true if user.present? && user == post.user
  end

  def destroy?
    true if user.present? && user == post.user
  end

  private

  # just a nice little namespace method
  def post
    record
  end
end
