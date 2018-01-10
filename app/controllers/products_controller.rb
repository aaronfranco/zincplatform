
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def quote
    # TODO: Refactor to send raw data via AJAX to avoid this hit on the DB
    product = Product.find(params[:id])
    # TODO: better naming for the API specific JSON formats
    requestBody = helpers.getApiJson(product)
    response = helpers.callForQuote(requestBody)
    # TODO: Maybe convert to String and then do generate HTML Client side instead of using Rails Object and ERB
    @data = Hashie::Mash::new response
  end
  def interstitial

  end
end
