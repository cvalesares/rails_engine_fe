class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
    # @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end
end
