require 'money_s3/builders/base_builder'
require 'money_s3/builders/pol_inv_dokl_type'

module MoneyS3
  module Builders
    class InvDoklType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :cislo_d
          element = Ox::Element.new('CisloD')
          element << attributes[:cislo_d] if attributes[:cislo_d]
          root << element
        end

        if attributes.key? :inv_id
          element = Ox::Element.new('InvID')
          element << attributes[:inv_id] if attributes[:inv_id]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :prac
          element = Ox::Element.new('Prac')
          element << attributes[:prac] if attributes[:prac]
          root << element
        end

        if attributes.key? :kontr
          element = Ox::Element.new('Kontr')
          element << attributes[:kontr] if attributes[:kontr]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :polozka
          attributes[:polozka].each { |i| root << PolInvDoklType.new(i, 'Polozka').builder }
        end

        root
      end
    end
  end
end