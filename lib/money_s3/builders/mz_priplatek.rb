require 'money_s3/builders/base_builder'
require 'money_s3/builders/typ_priplatku_type'

module MoneyS3
  module Builders
    class MzPriplatek
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('PripHodin', data[:prip_hodin]) if data.key? :prip_hodin

        if data.key? :typ_priplatku
          root << TypPriplatkuType.new('TypPriplatku', data[:typ_priplatku]).builder
        end

        root
      end
    end
  end
end