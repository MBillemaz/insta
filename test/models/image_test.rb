require 'test_helper'

describe Image do

  describe "search" do
    it "should returns first 6 images if no id in args" do
      out = Image.filter({})

      assert_equal out, Image.all.first(6)
    end

    it "should returns the correct images with category id 1" do
      out = Image.filter({category_id: Category.first.id})

      assert_equal 3, out.length
      out.each do |image|
        assert_equal image.category_id, Category.first.id
      end
    end

    it "should returns the correct images with image id 1" do
      out = Image.filter({image_id: 1})

      assert_equal 1, out.length
      assert_equal out[0].id, 1
    end
  end

end
