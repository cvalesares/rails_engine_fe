class MerchantService
  class << self

    def conn
      Faraday.new(url: "http://localhost:3000/api/v1/merchants")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
