require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ObdobiDPH
      include BaseBuilder

      attr_accessor :datum_od, :uc_md_1, :uc_d_1, :uc_md_2, :uc_d_2, :uc_md_3, :uc_d_3, :uc_md_4, :uc_d_4, :uc_md_5, :uc_d_5, :uc_md_6, :uc_d_6

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('DatumOd') << datum_od) if datum_od
        root << (Ox::Element.new('UcMD_1') << uc_md_1) if uc_md_1
        root << (Ox::Element.new('UcD_1') << uc_d_1) if uc_d_1
        root << (Ox::Element.new('UcMD_2') << uc_md_2) if uc_md_2
        root << (Ox::Element.new('UcD_2') << uc_d_2) if uc_d_2
        root << (Ox::Element.new('UcMD_3') << uc_md_3) if uc_md_3
        root << (Ox::Element.new('UcD_3') << uc_d_3) if uc_d_3
        root << (Ox::Element.new('UcMD_4') << uc_md_4) if uc_md_4
        root << (Ox::Element.new('UcD_4') << uc_d_4) if uc_d_4
        root << (Ox::Element.new('UcMD_5') << uc_md_5) if uc_md_5
        root << (Ox::Element.new('UcD_5') << uc_d_5) if uc_d_5
        root << (Ox::Element.new('UcMD_6') << uc_md_6) if uc_md_6
        root << (Ox::Element.new('UcD_6') << uc_d_6) if uc_d_6

        root
      end
    end
  end
end