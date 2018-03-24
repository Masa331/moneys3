require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UctyPohybuType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :uc_prodejk
          element = Ox::Element.new('UcProdejk')
          element << attributes[:uc_prodejk] if attributes[:uc_prodejk]
          root << element
        end

        if attributes.key? :uc_prijemk
          element = Ox::Element.new('UcPrijemk')
          element << attributes[:uc_prijemk] if attributes[:uc_prijemk]
          root << element
        end

        if attributes.key? :uc_vydejky
          element = Ox::Element.new('UcVydejky')
          element << attributes[:uc_vydejky] if attributes[:uc_vydejky]
          root << element
        end

        if attributes.key? :uc_vyrobky
          element = Ox::Element.new('UcVyrobky')
          element << attributes[:uc_vyrobky] if attributes[:uc_vyrobky]
          root << element
        end

        if attributes.key? :uc_v_dod_lst
          element = Ox::Element.new('UcVDodLst')
          element << attributes[:uc_v_dod_lst] if attributes[:uc_v_dod_lst]
          root << element
        end

        if attributes.key? :uc_p_dod_lst
          element = Ox::Element.new('UcPDodLst')
          element << attributes[:uc_p_dod_lst] if attributes[:uc_p_dod_lst]
          root << element
        end

        if attributes.key? :uc_manko
          element = Ox::Element.new('UcManko')
          element << attributes[:uc_manko] if attributes[:uc_manko]
          root << element
        end

        if attributes.key? :uc_preb
          element = Ox::Element.new('UcPreb')
          element << attributes[:uc_preb] if attributes[:uc_preb]
          root << element
        end

        root
      end
    end
  end
end