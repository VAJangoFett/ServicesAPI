class HomeController < ApplicationController

  def search
  	@all_currencies = CryptoCurrency.all
  end

  def result
  	@currency = CryptoCurrency.find(params[:format].to_i)
  end

  def update
  	ScrapperCrypto.new.perform
  	redirect_to find_path
  end

end
