require 'money_s3/builders/base_builder'
require 'money_s3/builders/skupina_kusovnik_type'

module MoneyS3
  module Builders
    class HeaderKusovnikType
      include BaseBuilder

      attr_accessor :cislo, :druh, :typ, :cis_karty, :zkratka, :popis, :naklad_mat, :naklad_mzd, :naklad_koop, :naklad_str, :vyuziti, :kalendar, :des_mist, :var_kus, :price_mask, :time_mask, :id_uziv, :datum_zmeny, :cas_zmeny, :skupina

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Cislo') << cislo) if cislo
        root << (Ox::Element.new('Druh') << druh) if druh
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('CisKarty') << cis_karty) if cis_karty
        root << (Ox::Element.new('Zkratka') << zkratka) if zkratka
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('NakladMat') << naklad_mat) if naklad_mat
        root << (Ox::Element.new('NakladMzd') << naklad_mzd) if naklad_mzd
        root << (Ox::Element.new('NakladKoop') << naklad_koop) if naklad_koop
        root << (Ox::Element.new('NakladStr') << naklad_str) if naklad_str
        root << (Ox::Element.new('Vyuziti') << vyuziti) if vyuziti
        root << (Ox::Element.new('Kalendar') << kalendar) if kalendar
        root << (Ox::Element.new('DesMist') << des_mist) if des_mist
        root << (Ox::Element.new('VarKus') << var_kus) if var_kus
        root << (Ox::Element.new('PriceMask') << price_mask) if price_mask
        root << (Ox::Element.new('TimeMask') << time_mask) if time_mask
        root << (Ox::Element.new('IDUziv') << id_uziv) if id_uziv
        root << (Ox::Element.new('DatumZmeny') << datum_zmeny) if datum_zmeny
        root << (Ox::Element.new('CasZmeny') << cas_zmeny) if cas_zmeny
        root << SkupinaKusovnikType.new(skupina, 'Skupina').builder if skupina

        root
      end
    end
  end
end