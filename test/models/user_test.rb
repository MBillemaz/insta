require 'test_helper'

describe User do

  it "should not create user with empty params" do
    image = User.new()
    assert_not image.save
  end

end
