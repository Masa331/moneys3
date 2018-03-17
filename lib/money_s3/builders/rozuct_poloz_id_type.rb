require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class RozuctPolozIDType
      include BaseBuilder

      attr_accessor :popis, :uc_md, :uc_d, :castka, :stred, :zakazka, :cinnost, :par_sym, :par_ico, :pozn, :typ_cena, :sazba_dph

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('UcMD') << uc_md) if uc_md
        root << (Ox::Element.new('UcD') << uc_d) if uc_d
        root << (Ox::Element.new('Castka') << castka) if castka
        root << (Ox::Element.new('Stred') << stred) if stred
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('ParSym') << par_sym) if par_sym
        root << (Ox::Element.new('ParICO') << par_ico) if par_ico
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('TypCena') << typ_cena) if typ_cena
        root << (Ox::Element.new('SazbaDPH') << sazba_dph) if sazba_dph

        root
      end
    end
  end
end