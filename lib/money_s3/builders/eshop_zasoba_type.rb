require 'money_s3/builders/base_builder'
require 'money_s3/builders/ekategorie_zasoba_type'

module MoneyS3
  module Builders
    class EshopZasobaType
      include BaseBuilder

      attr_accessor :in_export, :in_changed, :in_deleted, :cis_karty, :cis_skladu, :e_skup

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('IN_Export') << in_export) if in_export
        root << (Ox::Element.new('IN_Changed') << in_changed) if in_changed
        root << (Ox::Element.new('IN_Deleted') << in_deleted) if in_deleted
        root << (Ox::Element.new('CisKarty') << cis_karty) if cis_karty
        root << (Ox::Element.new('CisSkladu') << cis_skladu) if cis_skladu

        if e_skup
          e_skup.each { |i| root << EkategorieZasobaType.new(i, 'eSkup').builder }
        end

        root
      end
    end
  end
end