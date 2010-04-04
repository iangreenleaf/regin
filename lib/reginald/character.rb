module Reginald
  class Character < Atom
    attr_reader :quantifier

    def initialize(value, options = {})
      @quantifier = options[:quantifier]
      super
    end

    # Returns true if expression could be treated as a literal string.
    #
    # A Character is literal is there is no quantifier attached to it.
    def literal?
      quantifier.nil? && !ignorecase
    end

    def dup(options = {})
      char = super
      char.quantifier = options[:quantifier] if options.key?(:quantifier)
      char
    end

    def to_s(parent = false)
      if !parent && ignorecase
        "(?i-mx:#{value})#{quantifier}"
      else
        "#{value}#{quantifier}"
      end
    end

    def to_regexp
      Regexp.compile("\\A#{to_s(true)}\\Z", ignorecase)
    end

    def match(char)
      to_regexp.match(char)
    end

    def include?(char)
      if ignorecase
        value.downcase == char.downcase
      else
        value == char
      end
    end

    def eql?(other) #:nodoc:
      super && quantifier.eql?(other.quantifier)
    end

    def freeze #:nodoc:
      quantifier.freeze
      super
    end

    protected
      # TODO Remove quantifier writer
      def quantifier=(quantifier)
        @quantifier = quantifier
      end
  end
end
