require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "description should be at least 10 characters" do
    product = Product.new(title: "Short description", description: "test", image_url: "test.jpg", price: 1)
    assert product.invalid?
    assert_equal ["is too short (minimum is 10 characters)"],
      product.errors[:description]
  end

  test "price should be greater than 0" do
    product = Product.new(title: "My Test", description: "My description", image_url: "test.jpg")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]
      
      product.price = 0
      assert product.invalid?
      assert_equal ["must be greater than or equal to 0.01"],
        product.errors[:price]

      product.price = 1
      assert product.valid?
  end

  test "image_url should be valid" do
    ok = ["fred.gif", "fred.jpg", "fred.png", "FRED.JPG", "FRED.Jpg", "http://a.b.c/x/y/z/fred.gif"]
    bad = ["fred.doc", "fred.gif/more", "fred.gif.more"]

    ok.each do |image_url|
      assert new_product(image_url).valid?, "#{image_url} should be valid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?, "#{image_url} should be invalid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title: products(:ruby).title, description: "My description", price: 1, image_url: "test.jpg")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end

  def new_product(image_url)
    Product.new(
      title: "My Test",
      description: "this is a test description",
      price: 1,
      image_url: image_url
    )
  end

end
