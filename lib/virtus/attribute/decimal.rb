module Virtus
  class Attribute

    # Decimal
    #
    # @example
    #   class ExchangeRate
    #     include Virtus
    #
    #     attribute :dollar, Decimal
    #   end
    #
    #   ExchangeRate.new(:dollar => '2.6948')
    #
    class Decimal < Numeric
      primitive ::BigDecimal
      typecast_method :to_d

    end # class Decimal
  end # class Attribute
end # module Virtus
