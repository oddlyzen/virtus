require 'date'
require 'time'
require 'bigdecimal'
require 'bigdecimal/util'

# Base module which adds Attribute API to your classes
module Virtus

  # Represents an undefined parameter used by auto-generated option methods
  Undefined = Object.new.freeze

  # Extends base class with class and instance methods
  #
  # @param [Class] descendant
  #
  # @return [undefined]
  #
  # @api private
  def self.included(descendant)
    super
    descendant.extend(ClassMethods)
    descendant.send(:include, InstanceMethods)
  end

  private_class_method :included

end # module Virtus

require 'virtus/support/descendants_tracker'

require 'virtus/class_methods'
require 'virtus/instance_methods'

require 'virtus/attribute_set'

require 'virtus/typecast/object'
require 'virtus/typecast/array'
require 'virtus/typecast/fixnum'
require 'virtus/typecast/float'
require 'virtus/typecast/big_decimal'
require 'virtus/typecast/false_class'
require 'virtus/typecast/true_class'
require 'virtus/typecast/hash'
require 'virtus/typecast/date'
require 'virtus/typecast/date_time'
require 'virtus/typecast/time'
require 'virtus/typecast/string'
require 'virtus/typecast/symbol'
require 'virtus/typecast'

require 'virtus/attribute'
require 'virtus/attribute/object'
require 'virtus/attribute/array'
require 'virtus/attribute/boolean'
require 'virtus/attribute/date'
require 'virtus/attribute/date_time'
require 'virtus/attribute/numeric'
require 'virtus/attribute/decimal'
require 'virtus/attribute/float'
require 'virtus/attribute/hash'
require 'virtus/attribute/integer'
require 'virtus/attribute/string'
require 'virtus/attribute/time'
