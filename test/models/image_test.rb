require 'test_helper'

describe Image do

  describe "search" do
    it "should returns first 6 images if no id in args" do
      out = Image.filter({})

      assert_equal out, Image.all.first(6)
    end

    it "should returns the correct number of images with category id 1" do
      out = Image.filter({category_id: Category.first.id})

      assert_equal 3, out.length
      out.each do |image|
        assert_equal image.category_id, Category.first.id
      end
    end

    it "should returns the correct number of image with image id 1" do
      out = Image.filter({image_id: 1})

      assert_equal 1, out.length
    end
  end

  it "should returns the correct number of images with tag_id 5" do
    out = Image.filter({tag_id: 5})

    assert_equal 2, out.length
  end

  it "should returns the correct number of images with user_id 3" do
    out = Image.filter({user_id: 3})

    assert_equal 2, out.length
  end

  it "sould returns the correct images with last_id = 11" do
    out = Image.filter({last_id: 11})

    assert_equal Image.all.length-11, out.length
  end

  it "should returns 6 results maximum" do
    out = Image.filter({tag_id: 1})

    assert_equal 6, out.length
  end

end
