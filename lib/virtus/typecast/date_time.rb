module Virtus
  module Typecast

    # DateTime
    #
    class DateTime < Object

      # Typecast given value to String
      #
      # @example
      #   Virtus::Typecast::DateTime.to_string(date_time) # => "2011-07-20T10:30:41-07:00"
      #
      # @param [DateTime] value
      #
      # @return [String]
      #
      # @api public
      def self.to_string(value)
        value.to_s
      end

      # @api public
      def self.to_date(value)
        if value.respond_to?(:to_date)
          value.to_date
        else
          String.to_date(to_string(value))
        end
      end

      # @api public
      def self.to_time(value)
        if value.respond_to?(:to_time)
          value.to_time
        else
          String.to_time(to_string(value))
        end
      end

    end # class DateTime
  end # module Typecast
end # module Virtus
