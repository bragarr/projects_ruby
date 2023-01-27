require "dotenv"
require "uri"
require "net/http"
require "json"
require "./currency"

Dotenv.load('.env')

class Manager
    @@repo = {}
    def initialize
        initialize_repo
    end

    def initialize_repo
        response = web_scrap
        json = JSON.parse(response)
        for symbol,values in json
            coin = Coin.new(symbol, values["USD"], values["BRL"])
            @@repo[symbol] = coin
        end
    end

    def web_scrap
       url = ENV["API"]
       uri = URI(url)
       Net::HTTP.get(uri)
    end

    def coin_list
        @@repo.keys
    end

    def calculate(amount, symbol, to)
        coin = @@repo[symbol]
        amount*coin.send(to.to_sym)
    end

end