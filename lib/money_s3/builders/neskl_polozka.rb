require 'money_s3/builders/base_builder'
require 'money_s3/builders/firma_type'

module MoneyS3
  module Builders
    class NesklPolozka
      include BaseBuilder

      attr_accessor :zkrat, :mj, :uziv_code, :katalog, :bar_code, :zaloha, :zdan_zaloha, :konec_odpocet, :typ_zar_doby, :zar_doba, :protizapis, :plneno_dph, :hmotnost, :vyrobni_cis, :dat_exp, :dat_nakupu, :predm_pln, :dodavatel

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('MJ') << mj) if mj
        root << (Ox::Element.new('UzivCode') << uziv_code) if uziv_code
        root << (Ox::Element.new('Katalog') << katalog) if katalog
        root << (Ox::Element.new('BarCode') << bar_code) if bar_code
        root << (Ox::Element.new('Zaloha') << zaloha) if zaloha
        root << (Ox::Element.new('ZdanZaloha') << zdan_zaloha) if zdan_zaloha
        root << (Ox::Element.new('KonecOdpocet') << konec_odpocet) if konec_odpocet
        root << (Ox::Element.new('TypZarDoby') << typ_zar_doby) if typ_zar_doby
        root << (Ox::Element.new('ZarDoba') << zar_doba) if zar_doba
        root << (Ox::Element.new('Protizapis') << protizapis) if protizapis
        root << (Ox::Element.new('PlnenoDPH') << plneno_dph) if plneno_dph
        root << (Ox::Element.new('Hmotnost') << hmotnost) if hmotnost
        root << (Ox::Element.new('VyrobniCis') << vyrobni_cis) if vyrobni_cis
        root << (Ox::Element.new('DatExp') << dat_exp) if dat_exp
        root << (Ox::Element.new('DatNakupu') << dat_nakupu) if dat_nakupu
        root << (Ox::Element.new('PredmPln') << predm_pln) if predm_pln
        root << FirmaType.new(dodavatel, 'Dodavatel').builder if dodavatel

        root
      end
    end
  end
end