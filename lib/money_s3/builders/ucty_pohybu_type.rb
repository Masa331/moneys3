require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UctyPohybuType
      include BaseBuilder

      attr_accessor :uc_prodejk, :uc_prijemk, :uc_vydejky, :uc_vyrobky, :uc_v_dod_lst, :uc_p_dod_lst, :uc_manko, :uc_preb

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('UcProdejk') << uc_prodejk) if uc_prodejk
        root << (Ox::Element.new('UcPrijemk') << uc_prijemk) if uc_prijemk
        root << (Ox::Element.new('UcVydejky') << uc_vydejky) if uc_vydejky
        root << (Ox::Element.new('UcVyrobky') << uc_vyrobky) if uc_vyrobky
        root << (Ox::Element.new('UcVDodLst') << uc_v_dod_lst) if uc_v_dod_lst
        root << (Ox::Element.new('UcPDodLst') << uc_p_dod_lst) if uc_p_dod_lst
        root << (Ox::Element.new('UcManko') << uc_manko) if uc_manko
        root << (Ox::Element.new('UcPreb') << uc_preb) if uc_preb

        root
      end
    end
  end
end