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

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :nak_cena
          element = Ox::Element.new('Nak_Cena')
          element << attributes[:nak_cena] if attributes[:nak_cena]
          root << element
        end

        if attributes.key? :posl_n_cen
          element = Ox::Element.new('Posl_N_Cen')
          element << attributes[:posl_n_cen] if attributes[:posl_n_cen]
          root << element
        end

        if attributes.key? :posl_nak
          element = Ox::Element.new('Posl_Nak')
          element << attributes[:posl_nak] if attributes[:posl_nak]
          root << element
        end

        if attributes.key? :posl_prod
          element = Ox::Element.new('Posl_Prod')
          element << attributes[:posl_prod] if attributes[:posl_prod]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :skl_ucet
          element = Ox::Element.new('SklUcet')
          element << attributes[:skl_ucet] if attributes[:skl_ucet]
          root << element
        end

        if attributes.key? :www_popis
          element = Ox::Element.new('WWWPopis')
          element << attributes[:www_popis] if attributes[:www_popis]
          root << element
        end

        if attributes.key? :www_popis2
          element = Ox::Element.new('WWWPopis2')
          element << attributes[:www_popis2] if attributes[:www_popis2]
          root << element
        end

        if attributes.key? :vyrobce
          element = Ox::Element.new('Vyrobce')
          element << attributes[:vyrobce] if attributes[:vyrobce]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :novinka
          element = Ox::Element.new('Novinka')
          element << attributes[:novinka] if attributes[:novinka]
          root << element
        end

        if attributes.key? :pripravuje
          element = Ox::Element.new('Pripravuje')
          element << attributes[:pripravuje] if attributes[:pripravuje]
          root << element
        end

        if attributes.key? :vyprodej
          element = Ox::Element.new('Vyprodej')
          element << attributes[:vyprodej] if attributes[:vyprodej]
          root << element
        end

        if attributes.key? :zakaz_prode
          element = Ox::Element.new('ZakazProde')
          element << attributes[:zakaz_prode] if attributes[:zakaz_prode]
          root << element
        end

        if attributes.key? :naz_podskup
          element = Ox::Element.new('NazPodskup')
          element << attributes[:naz_podskup] if attributes[:naz_podskup]
          root << element
        end

        if attributes.key? :nomenklatu
          element = Ox::Element.new('Nomenklatu')
          element << attributes[:nomenklatu] if attributes[:nomenklatu]
          root << element
        end

        if attributes.key? :url_zbozi
          element = Ox::Element.new('URL_Zbozi')
          element << attributes[:url_zbozi] if attributes[:url_zbozi]
          root << element
        end

        if attributes.key? :v_sleva
          element = Ox::Element.new('VSleva')
          element << attributes[:v_sleva] if attributes[:v_sleva]
          root << element
        end

        if attributes.key? :v_akce
          element = Ox::Element.new('VAkce')
          element << attributes[:v_akce] if attributes[:v_akce]
          root << element
        end

        if attributes.key? :v_novinka
          element = Ox::Element.new('VNovinka')
          element << attributes[:v_novinka] if attributes[:v_novinka]
          root << element
        end

        if attributes.key? :prva_strana
          element = Ox::Element.new('PrvaStrana')
          element << attributes[:prva_strana] if attributes[:prva_strana]
          root << element
        end

        if attributes.key? :platnost_do
          element = Ox::Element.new('PlatnostDo')
          element << attributes[:platnost_do] if attributes[:platnost_do]
          root << element
        end

        if attributes.key? :uc_vyrobk_v
          element = Ox::Element.new('UcVyrobkV')
          element << attributes[:uc_vyrobk_v] if attributes[:uc_vyrobk_v]
          root << element
        end

        if attributes.key? :dat_inv
          element = Ox::Element.new('DatInv')
          element << attributes[:dat_inv] if attributes[:dat_inv]
          root << element
        end

        if attributes.key? :mn_inv
          element = Ox::Element.new('MnInv')
          element << attributes[:mn_inv] if attributes[:mn_inv]
          root << element
        end

        if attributes.key? :konfigurace
          root << Konfigurace.new(attributes[:konfigurace], 'konfigurace').builder
        end

        if attributes.key? :stav_zasoby
          root << StavZasobyType.new(attributes[:stav_zasoby], 'StavZasoby').builder
        end

        if attributes.key? :uc_pohyb
          root << UctyPohybuType.new(attributes[:uc_pohyb], 'UcPohyb').builder
        end

        if attributes.key? :eshop
          root << EshopZasobaType.new(attributes[:eshop], 'eshop').builder
        end

        if attributes.key? :km_karta
          root << KmKartaType.new(attributes[:km_karta], 'KmKarta').builder
        end

        if attributes.key? :sklad
          root << SkladType.new(attributes[:sklad], 'Sklad').builder
        end

        if attributes.key? :skupina
          root << SkupinaZasobType.new(attributes[:skupina], 'Skupina').builder
        end

        if attributes.key? :posl_dod
          root << FirmaType.new(attributes[:posl_dod], 'Posl_Dod').builder
        end

        if attributes.key? :vlajky
          root << Vlajky.new(attributes[:vlajky], 'Vlajky').builder
        end

        if attributes.key? :pc
          attributes[:pc].each { |i| root << PC.new(i, 'PC').builder }
        end

        if attributes.key? :seznam_alternativ
          element = Ox::Element.new('SeznamAlternativ')
          attributes[:seznam_alternativ].each { |i| element << AlternativaPrislusenstviType.new(i, 'Alternativa').builder }
          root << element
        end

        if attributes.key? :seznam_prislusenstvi
          element = Ox::Element.new('SeznamPrislusenstvi')
          attributes[:seznam_prislusenstvi].each { |i| element << AlternativaPrislusenstviType.new(i, 'Prislusenstvi').builder }
          root << element
        end

        if attributes.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          attributes[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end