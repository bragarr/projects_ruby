class Coin
    attr_accessor :symbol, :USD, :BRL

    def initialize(symbol, usd, brl)
        @symbol, @USD, @BRL = symbol, usd, brl
    end
    
end