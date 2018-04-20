require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :user => nil,
      :image_data => "MyText",
      :caption => "MyText",
      :like => nil,
      :comment => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[user_id]"

      assert_select "textarea[name=?]", "post[image_data]"

      assert_select "textarea[name=?]", "post[caption]"

      assert_select "input[name=?]", "post[like_id]"

      assert_select "input[name=?]", "post[comment_id]"
    end
  end
end
