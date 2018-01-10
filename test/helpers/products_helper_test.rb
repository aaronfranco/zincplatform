require 'test_helper'
class ProductsHelperTest < ActionView::TestCase
  setup do
    VCR.insert_cassette "zincplatform"
    @product = products(:one)
  end
  test "getApiJson returns properly formatted JSON body" do
    mock ={
      "sku": {
        "sku_name": "MyString",
        "category": "Musical",
        "subcategory": "Guitar",
        "description": "MyText",
        "price": "9.99",
        "currency": "USD",
        "brand": "GoodProduct",
        "variant_id": 328,
        "additional_info": {
          "vendor": "Gold"
        },
        "remote_image_url": "path/to/sku_image.jpg"
      },
      "zip_code": "10027",
      "additional_params": {
        "source": "CART"
      }
    }
    assert_equal mock, self.getApiJson(@product)
  end
  test "API returns proper quote response" do
    requestBody = self.getApiJson(@product)
    response = self.callForQuote(requestBody)
    assert_equal response.code, 200
  end
  teardown do
    VCR.eject_cassette
  end
end
