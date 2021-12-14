class MerchantService
  class << self
    def parse_data(endpoint)
      conn = Faraday.new(url: "http://localhost:3000")
      response = conn.get(endpoint)
      JSON.parse(response.body, symbolize_names: true)
    end

    def all_merchants
      merchants = parse_data("/api/v1/merchants")
    end
  end
end
