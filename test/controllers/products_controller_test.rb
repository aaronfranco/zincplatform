require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get "/"
    assert_response :success
  end
  test "index should display all products" do
    get "/"
    assert_select "div.product-card", 2
  end
  test "index should display product name accurately" do
    get "/"
    assert_select "h1.product-name", "MyString"
  end
  test "index should display product price accurately" do
    get "/"
    # TODO: We should also test the currency type if/when we have to localize the app
    assert_select "h2.product-price", "$9.99"
  end

end
