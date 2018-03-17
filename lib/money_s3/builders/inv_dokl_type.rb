require 'money_s3/builders/base_builder'
require 'money_s3/builders/pol_inv_dokl_type'

module MoneyS3
  module Builders
    class InvDoklType
      include BaseBuilder

      attr_accessor :cislo_d, :inv_id, :popis, :prac, :kontr, :poznamka, :polozka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('CisloD') << cislo_d) if cislo_d
        root << (Ox::Element.new('InvID') << inv_id) if inv_id
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Prac') << prac) if prac
        root << (Ox::Element.new('Kontr') << kontr) if kontr
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka

        if polozka
          polozka.each { |i| root << PolInvDoklType.new(i, 'Polozka').builder }
        end

        root
      end
    end
  end
end