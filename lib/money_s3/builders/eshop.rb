require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Eshop
      include BaseBuilder

      attr_accessor :in_export, :in_changed, :in_id, :in_jmeno, :in_heslo, :in_dealer, :in_d_skup, :in_ind_slev, :in_soukrom, :in_d_skup_zkratka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('IN_Export') << in_export) if in_export
        root << (Ox::Element.new('IN_Changed') << in_changed) if in_changed
        root << (Ox::Element.new('IN_Id') << in_id) if in_id
        root << (Ox::Element.new('IN_Jmeno') << in_jmeno) if in_jmeno
        root << (Ox::Element.new('IN_Heslo') << in_heslo) if in_heslo
        root << (Ox::Element.new('IN_Dealer') << in_dealer) if in_dealer
        root << (Ox::Element.new('IN_DSkup') << in_d_skup) if in_d_skup
        root << (Ox::Element.new('IN_IndSlev') << in_ind_slev) if in_ind_slev
        root << (Ox::Element.new('IN_Soukrom') << in_soukrom) if in_soukrom
        root << (Ox::Element.new('IN_DSkupZkratka') << in_d_skup_zkratka) if in_d_skup_zkratka

        root
      end
    end
  end
end