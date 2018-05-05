module MoneyS3
  module Builders
    class BankUcetPokladnaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('UcPokl', data[:uc_pokl]) if data.key? :uc_pokl
        root << build_element('PocStav', data[:poc_stav]) if data.key? :poc_stav
        root << build_element('Mena', data[:mena]) if data.key? :mena
        root << build_element('BMena', data[:b_mena]) if data.key? :b_mena
        root << build_element('PSKurz', data[:ps_kurz]) if data.key? :ps_kurz
        root << build_element('PSMnozstvi', data[:ps_mnozstvi]) if data.key? :ps_mnozstvi
        root << build_element('PrimUcet', data[:prim_ucet]) if data.key? :prim_ucet
        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('BKod', data[:b_kod]) if data.key? :b_kod
        root << build_element('BNazev', data[:b_nazev]) if data.key? :b_nazev
        root << build_element('BZkrat', data[:b_zkrat]) if data.key? :b_zkrat
        root << build_element('IBAN', data[:iban]) if data.key? :iban
        root << build_element('SWIFT', data[:swift]) if data.key? :swift
        root << build_element('Uver', data[:uver]) if data.key? :uver
        root << build_element('HBID', data[:hbid]) if data.key? :hbid
        root << build_element('HBNazev', data[:hb_nazev]) if data.key? :hb_nazev
        root << build_element('Druh', data[:druh]) if data.key? :druh
        root << build_element('TypPrijem', data[:typ_prijem]) if data.key? :typ_prijem
        root << build_element('TypVydej', data[:typ_vydej]) if data.key? :typ_vydej
        root << build_element('Pokladni', data[:pokladni]) if data.key? :pokladni
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end