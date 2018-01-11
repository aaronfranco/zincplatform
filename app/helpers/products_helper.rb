module ProductsHelper
  def getApiJson(product)
    # TODO: Work on product features to create a more automated conversion to JSON so this isn't hard coded
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
    # TODO: Make this Async and non-blocking
    return HTTParty.post(
      "https://sandbox.zincplatform.com/api/price_quotes",
      :headers => {
        "x-user-email"  => "xxx",
        "x-user-token" => "xxx"
      },
      :body => requestBody
    )
  end

  def callForInterstitial
    headers = self.creds
    # TODO: Make this Async and non-blocking
    # TODO: Move URLs and Tokens to environment files
    return HTTParty.get(
      "https://sandbox.zincplatform.com/api/interstitials/Musical",
      :headers => {
        "x-user-email"  => "xxx",
        "x-user-token" => "xxx"
      }
    )
  end

end
