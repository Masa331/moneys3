require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Castky
      include BaseBuilder

      attr_accessor :celkem, :zaklad_0, :zaklad_1, :zaklad_2, :zaklad_3, :dph_1, :dph_2, :dph_3, :cest_sluzba, :pouz_zb_1, :pouz_zb_2, :pouz_zb_3, :urc_cerp_zct, :cerp_zuct

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << (Ox::Element.new('Zaklad_0') << zaklad_0) if zaklad_0
        root << (Ox::Element.new('Zaklad_1') << zaklad_1) if zaklad_1
        root << (Ox::Element.new('Zaklad_2') << zaklad_2) if zaklad_2
        root << (Ox::Element.new('Zaklad_3') << zaklad_3) if zaklad_3
        root << (Ox::Element.new('DPH_1') << dph_1) if dph_1
        root << (Ox::Element.new('DPH_2') << dph_2) if dph_2
        root << (Ox::Element.new('DPH_3') << dph_3) if dph_3
        root << (Ox::Element.new('CestSluzba') << cest_sluzba) if cest_sluzba
        root << (Ox::Element.new('PouzZb_1') << pouz_zb_1) if pouz_zb_1
        root << (Ox::Element.new('PouzZb_2') << pouz_zb_2) if pouz_zb_2
        root << (Ox::Element.new('PouzZb_3') << pouz_zb_3) if pouz_zb_3
        root << (Ox::Element.new('UrcCerpZct') << urc_cerp_zct) if urc_cerp_zct
        root << (Ox::Element.new('CerpZuct') << cerp_zuct) if cerp_zuct

        root
      end
    end
  end
end