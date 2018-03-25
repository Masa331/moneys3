require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'
require 'money_s3/builders/souhrn_dph_type'

module MoneyS3
  module Builders
    class Valuty
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Celkem', data[:celkem]) if data.key? :celkem

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end

        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end

        root
      end
    end
  end
end