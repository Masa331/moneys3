module MoneyS3
  module Builders
    class BankUcetPokladnaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('UcPokl', data[:uc_pokl], data[:uc_pokl_attributes]) if data.key? :uc_pokl
        root << build_element('PocStav', data[:poc_stav], data[:poc_stav_attributes]) if data.key? :poc_stav
        root << build_element('Mena', data[:mena], data[:mena_attributes]) if data.key? :mena
        root << build_element('BMena', data[:b_mena], data[:b_mena_attributes]) if data.key? :b_mena
        root << build_element('PSKurz', data[:ps_kurz], data[:ps_kurz_attributes]) if data.key? :ps_kurz
        root << build_element('PSMnozstvi', data[:ps_mnozstvi], data[:ps_mnozstvi_attributes]) if data.key? :ps_mnozstvi
        root << build_element('PrimUcet', data[:prim_ucet], data[:prim_ucet_attributes]) if data.key? :prim_ucet
        root << build_element('Ucet', data[:ucet], data[:ucet_attributes]) if data.key? :ucet
        root << build_element('BKod', data[:b_kod], data[:b_kod_attributes]) if data.key? :b_kod
        root << build_element('BNazev', data[:b_nazev], data[:b_nazev_attributes]) if data.key? :b_nazev
        root << build_element('BZkrat', data[:b_zkrat], data[:b_zkrat_attributes]) if data.key? :b_zkrat
        root << build_element('IBAN', data[:iban], data[:iban_attributes]) if data.key? :iban
        root << build_element('SWIFT', data[:swift], data[:swift_attributes]) if data.key? :swift
        root << build_element('Uver', data[:uver], data[:uver_attributes]) if data.key? :uver
        root << build_element('HBID', data[:hbid], data[:hbid_attributes]) if data.key? :hbid
        root << build_element('HBNazev', data[:hb_nazev], data[:hb_nazev_attributes]) if data.key? :hb_nazev
        root << build_element('Druh', data[:druh], data[:druh_attributes]) if data.key? :druh
        root << build_element('TypPrijem', data[:typ_prijem], data[:typ_prijem_attributes]) if data.key? :typ_prijem
        root << build_element('TypVydej', data[:typ_vydej], data[:typ_vydej_attributes]) if data.key? :typ_vydej
        root << build_element('Pokladni', data[:pokladni], data[:pokladni_attributes]) if data.key? :pokladni
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end