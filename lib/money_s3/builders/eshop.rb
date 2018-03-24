require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Eshop
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

        if attributes.key? :in_id
          element = Ox::Element.new('IN_Id')
          element << attributes[:in_id] if attributes[:in_id]
          root << element
        end

        if attributes.key? :in_jmeno
          element = Ox::Element.new('IN_Jmeno')
          element << attributes[:in_jmeno] if attributes[:in_jmeno]
          root << element
        end

        if attributes.key? :in_heslo
          element = Ox::Element.new('IN_Heslo')
          element << attributes[:in_heslo] if attributes[:in_heslo]
          root << element
        end

        if attributes.key? :in_dealer
          element = Ox::Element.new('IN_Dealer')
          element << attributes[:in_dealer] if attributes[:in_dealer]
          root << element
        end

        if attributes.key? :in_d_skup
          element = Ox::Element.new('IN_DSkup')
          element << attributes[:in_d_skup] if attributes[:in_d_skup]
          root << element
        end

        if attributes.key? :in_ind_slev
          element = Ox::Element.new('IN_IndSlev')
          element << attributes[:in_ind_slev] if attributes[:in_ind_slev]
          root << element
        end

        if attributes.key? :in_soukrom
          element = Ox::Element.new('IN_Soukrom')
          element << attributes[:in_soukrom] if attributes[:in_soukrom]
          root << element
        end

        if attributes.key? :in_d_skup_zkratka
          element = Ox::Element.new('IN_DSkupZkratka')
          element << attributes[:in_d_skup_zkratka] if attributes[:in_d_skup_zkratka]
          root << element
        end

        root
      end
    end
  end
end