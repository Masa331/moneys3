require 'money_s3/builders/base_builder'
require 'money_s3/builders/ekategorie_zasoba_type'

module MoneyS3
  module Builders
    class EshopZasobaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :in_export
          element = Ox::Element.new('IN_Export')
          element << attributes[:in_export] if attributes[:in_export]
          root << element
        end

        if attributes.key? :in_changed
          element = Ox::Element.new('IN_Changed')
          element << attributes[:in_changed] if attributes[:in_changed]
          root << element
        end

        if attributes.key? :in_deleted
          element = Ox::Element.new('IN_Deleted')
          element << attributes[:in_deleted] if attributes[:in_deleted]
          root << element
        end

        if attributes.key? :cis_karty
          element = Ox::Element.new('CisKarty')
          element << attributes[:cis_karty] if attributes[:cis_karty]
          root << element
        end

        if attributes.key? :cis_skladu
          element = Ox::Element.new('CisSkladu')
          element << attributes[:cis_skladu] if attributes[:cis_skladu]
          root << element
        end

        if attributes.key? :e_skup
          attributes[:e_skup].each { |i| root << EkategorieZasobaType.new(i, 'eSkup').builder }
        end

        root
      end
    end
  end
end