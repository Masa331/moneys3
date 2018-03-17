require 'money_s3/builders/base_builder'
require 'money_s3/builders/konfigurace'
require 'money_s3/builders/stav_zasoby_type'
require 'money_s3/builders/ucty_pohybu_type'
require 'money_s3/builders/eshop_zasoba_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/skupina_zasob_type'
require 'money_s3/builders/firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/pc'
require 'money_s3/builders/alternativa_prislusenstvi_type'
require 'money_s3/builders/alternativa_prislusenstvi_type'

module MoneyS3
  module Builders
    class Zasoba
      include BaseBuilder

      attr_accessor :nak_cena, :posl_n_cen, :posl_nak, :posl_prod, :pozn, :skl_ucet, :www_popis, :www_popis2, :vyrobce, :sleva, :novinka, :pripravuje, :vyprodej, :zakaz_prode, :naz_podskup, :nomenklatu, :url_zbozi, :v_sleva, :v_akce, :v_novinka, :prva_strana, :platnost_do, :uc_vyrobk_v, :dat_inv, :mn_inv, :konfigurace, :stav_zasoby, :uc_pohyb, :eshop, :km_karta, :sklad, :skupina, :posl_dod, :vlajky, :pc, :seznam_alternativ, :seznam_prislusenstvi, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Nak_Cena') << nak_cena) if nak_cena
        root << (Ox::Element.new('Posl_N_Cen') << posl_n_cen) if posl_n_cen
        root << (Ox::Element.new('Posl_Nak') << posl_nak) if posl_nak
        root << (Ox::Element.new('Posl_Prod') << posl_prod) if posl_prod
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('SklUcet') << skl_ucet) if skl_ucet
        root << (Ox::Element.new('WWWPopis') << www_popis) if www_popis
        root << (Ox::Element.new('WWWPopis2') << www_popis2) if www_popis2
        root << (Ox::Element.new('Vyrobce') << vyrobce) if vyrobce
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('Novinka') << novinka) if novinka
        root << (Ox::Element.new('Pripravuje') << pripravuje) if pripravuje
        root << (Ox::Element.new('Vyprodej') << vyprodej) if vyprodej
        root << (Ox::Element.new('ZakazProde') << zakaz_prode) if zakaz_prode
        root << (Ox::Element.new('NazPodskup') << naz_podskup) if naz_podskup
        root << (Ox::Element.new('Nomenklatu') << nomenklatu) if nomenklatu
        root << (Ox::Element.new('URL_Zbozi') << url_zbozi) if url_zbozi
        root << (Ox::Element.new('VSleva') << v_sleva) if v_sleva
        root << (Ox::Element.new('VAkce') << v_akce) if v_akce
        root << (Ox::Element.new('VNovinka') << v_novinka) if v_novinka
        root << (Ox::Element.new('PrvaStrana') << prva_strana) if prva_strana
        root << (Ox::Element.new('PlatnostDo') << platnost_do) if platnost_do
        root << (Ox::Element.new('UcVyrobkV') << uc_vyrobk_v) if uc_vyrobk_v
        root << (Ox::Element.new('DatInv') << dat_inv) if dat_inv
        root << (Ox::Element.new('MnInv') << mn_inv) if mn_inv
        root << Konfigurace.new(konfigurace, 'konfigurace').builder if konfigurace
        root << StavZasobyType.new(stav_zasoby, 'StavZasoby').builder if stav_zasoby
        root << UctyPohybuType.new(uc_pohyb, 'UcPohyb').builder if uc_pohyb
        root << EshopZasobaType.new(eshop, 'eshop').builder if eshop
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta
        root << SkladType.new(sklad, 'Sklad').builder if sklad
        root << SkupinaZasobType.new(skupina, 'Skupina').builder if skupina
        root << FirmaType.new(posl_dod, 'Posl_Dod').builder if posl_dod
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky

        if pc
          pc.each { |i| root << PC.new(i, 'PC').builder }
        end

        if seznam_alternativ
          element = Ox::Element.new('SeznamAlternativ')
          seznam_alternativ.each { |i| element << AlternativaPrislusenstviType.new(i, 'Alternativa').builder }
          root << element
        end

        if seznam_prislusenstvi
          element = Ox::Element.new('SeznamPrislusenstvi')
          seznam_prislusenstvi.each { |i| element << AlternativaPrislusenstviType.new(i, 'Prislusenstvi').builder }
          root << element
        end

        if dokumenty
          element = Ox::Element.new('Dokumenty')
          dokumenty.map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end