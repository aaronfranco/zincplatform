module ProductsHelper
  def getApiJson(product)
    return {
      "sku": {
        "sku_name": product.name,
        "category": "Musical",
        "subcategory": "Guitar",
        "description": product.description,
        "price": product.price.to_s,
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
  end
  def callForQuote(requestBody)
    headers = {
      "x-user-email"  => "support@zincplatform.com",
      "x-user-token" => "CxQCfo9myqPfx6s9PVxe"
    }
    # TODO: Make this Async and non-blocking
    return HTTParty.post(
      "https://private-9212f-zincplatform.apiary-mock.com/api/price_quotes",
      :headers => headers,
      :body => requestBody
    )
  end

end
