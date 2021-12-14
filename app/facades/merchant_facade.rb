class MerchantFacade
  class << self
    def all_merchants
      merchants = MerchantService.all_merchants
      merchants[:data].map do |merchant|
        Merchant.new({id: merchant[:id], name: merchant[:attributes][:name]})
      end
    end
  end
end
