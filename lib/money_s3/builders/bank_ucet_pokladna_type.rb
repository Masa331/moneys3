require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class BankUcetPokladnaType
      include BaseBuilder

      attr_accessor :zkrat, :popis, :uc_pokl, :poc_stav, :mena, :b_mena, :ps_kurz, :ps_mnozstvi, :prim_ucet, :ucet, :b_kod, :b_nazev, :b_zkrat, :iban, :swift, :uver, :hbid, :hb_nazev, :druh, :typ_prijem, :typ_vydej, :pokladni, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('UcPokl') << uc_pokl) if uc_pokl
        root << (Ox::Element.new('PocStav') << poc_stav) if poc_stav
        root << (Ox::Element.new('Mena') << mena) if mena
        root << (Ox::Element.new('BMena') << b_mena) if b_mena
        root << (Ox::Element.new('PSKurz') << ps_kurz) if ps_kurz
        root << (Ox::Element.new('PSMnozstvi') << ps_mnozstvi) if ps_mnozstvi
        root << (Ox::Element.new('PrimUcet') << prim_ucet) if prim_ucet
        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('BKod') << b_kod) if b_kod
        root << (Ox::Element.new('BNazev') << b_nazev) if b_nazev
        root << (Ox::Element.new('BZkrat') << b_zkrat) if b_zkrat
        root << (Ox::Element.new('IBAN') << iban) if iban
        root << (Ox::Element.new('SWIFT') << swift) if swift
        root << (Ox::Element.new('Uver') << uver) if uver
        root << (Ox::Element.new('HBID') << hbid) if hbid
        root << (Ox::Element.new('HBNazev') << hb_nazev) if hb_nazev
        root << (Ox::Element.new('Druh') << druh) if druh
        root << (Ox::Element.new('TypPrijem') << typ_prijem) if typ_prijem
        root << (Ox::Element.new('TypVydej') << typ_vydej) if typ_vydej
        root << (Ox::Element.new('Pokladni') << pokladni) if pokladni
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end