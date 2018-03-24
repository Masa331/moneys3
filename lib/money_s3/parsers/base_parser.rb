module MoneyS3
  module Parsers
    module BaseParser
      EMPTY_ARRAY = []
      EMPTY_ATTRIBUTES = {}

      attr_accessor :raw, :attributes

      def initialize(raw, attributes = {})
        @raw = raw
        @attributes = attributes
      end

      private

      def at(locator)
        return nil if raw.nil?

        raw[locator]
      end

      def submodel_at(klass, locator)
        element_xml = at locator

        klass.new(element_xml) if element_xml
      end

      def array_of_at(klass, locator)
        return EMPTY_ARRAY if raw.nil?

        elements = raw.dig(*locator) || EMPTY_ARRAY

        if locator == [:FaktVyd]
          require 'pry'; binding.pry
        end

        if elements.is_a?(Hash) || elements.is_a?(String)
          # elements = [[EMPTY_ATTRIBUTES, elements]]
          [klass.new(elements)]
        else # Array
          # if elements.empty?
          #   []
          # if elements.all? { |e| e.is_a? Hash }
          #   elements = [elements]
          # end


          elements.map do |element|
            if element.is_a? Hash
              klass.new(element)
            else # array
              attributes, actual_element = element
              klass.new(actual_element, attributes)
            end
          end
        end

        # elements.map do |attributes, raw|
        #   if klass.is_a? String
        #     klass.new(raw)
        #   else
        #     klass.new(raw, attributes)
        #   end
        # end
      end
    end

    module BaseParser
      EMPTY_ARRAY = []
      EMPTY_ATTRIBUTES = {}

      attr_accessor :raw, :attributes

      def initialize(raw, attributes = {})
        @raw = raw
        @attributes = attributes
      end

      private

      def at(locator)
        return nil if raw.nil?

        raw[locator]
      end

      def submodel_at(klass, locator)
        element_xml = at locator

        klass.new(element_xml) if element_xml
      end

      def array_of_at(klass, locator)
        return EMPTY_ARRAY if raw.nil?

        elements = raw.dig(*locator) || EMPTY_ARRAY

        if locator == [:FaktVyd]
          require 'pry'; binding.pry
        end

        if elements.is_a?(Hash) || elements.is_a?(String)
          # elements = [[EMPTY_ATTRIBUTES, elements]]
          [klass.new(elements)]
        else # Array
          # if elements.empty?
          #   []
          # if elements.all? { |e| e.is_a? Hash }
          #   elements = [elements]
          # end


          elements.map do |element|
            if element.is_a? Hash
              klass.new(element)
            else # array
              attributes, actual_element = element
              klass.new(actual_element, attributes)
            end
          end
        end

        # elements.map do |attributes, raw|
        #   if klass.is_a? String
        #     klass.new(raw)
        #   else
        #     klass.new(raw, attributes)
        #   end
        # end
      end
    end
  end
end
