require 'test_helper'

describe Image do

  before do
    @imageInvalidUrl = images(:imageInvalidUrl)
  end

  it "returns the default image url if the image url is invalid" do
    assert_equal true, true
    assert_equal "http://www.latorredelsol.com/press/components/com_easyblog/themes/wireframe/images/placeholder-image.png", @imageInvalidUrl.thumbnail
  end
end
