module MoneyS3
  module Builders
    class ZasobaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :konfigurace
          root << Konfigurace.new('konfigurace', data[:konfigurace]).builder
        end
        if data.key? :stav_zasoby
          root << StavZasobyType.new('StavZasoby', data[:stav_zasoby]).builder
        end
        root << build_element('Nak_Cena', data[:nak_cena]) if data.key? :nak_cena
        root << build_element('Posl_N_Cen', data[:posl_n_cen]) if data.key? :posl_n_cen
        root << build_element('Posl_Nak', data[:posl_nak]) if data.key? :posl_nak
        root << build_element('Posl_Prod', data[:posl_prod]) if data.key? :posl_prod
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('SklUcet', data[:skl_ucet]) if data.key? :skl_ucet
        root << build_element('WWWPopis', data[:www_popis]) if data.key? :www_popis
        root << build_element('WWWPopis2', data[:www_popis2]) if data.key? :www_popis2
        root << build_element('Vyrobce', data[:vyrobce]) if data.key? :vyrobce
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('Novinka', data[:novinka]) if data.key? :novinka
        root << build_element('Pripravuje', data[:pripravuje]) if data.key? :pripravuje
        root << build_element('Vyprodej', data[:vyprodej]) if data.key? :vyprodej
        root << build_element('ZakazProde', data[:zakaz_prode]) if data.key? :zakaz_prode
        root << build_element('NazPodskup', data[:naz_podskup]) if data.key? :naz_podskup
        root << build_element('Nomenklatu', data[:nomenklatu]) if data.key? :nomenklatu
        root << build_element('URL_Zbozi', data[:url_zbozi]) if data.key? :url_zbozi
        root << build_element('VSleva', data[:v_sleva]) if data.key? :v_sleva
        root << build_element('VAkce', data[:v_akce]) if data.key? :v_akce
        root << build_element('VNovinka', data[:v_novinka]) if data.key? :v_novinka
        root << build_element('PrvaStrana', data[:prva_strana]) if data.key? :prva_strana
        root << build_element('PlatnostDo', data[:platnost_do]) if data.key? :platnost_do
        if data.key? :uc_pohyb
          root << UctyPohybuType.new('UcPohyb', data[:uc_pohyb]).builder
        end
        root << build_element('UcVyrobkV', data[:uc_vyrobk_v]) if data.key? :uc_vyrobk_v
        root << build_element('DatInv', data[:dat_inv]) if data.key? :dat_inv
        root << build_element('MnInv', data[:mn_inv]) if data.key? :mn_inv
        if data.key? :eshop
          root << EshopZasobaType.new('eshop', data[:eshop]).builder
        end
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end
        if data.key? :sklad
          root << SkladType.new('Sklad', data[:sklad]).builder
        end
        if data.key? :skupina
          root << SkupinaZasobType.new('Skupina', data[:skupina]).builder
        end
        if data.key? :posl_dod
          root << FirmaType.new('Posl_Dod', data[:posl_dod]).builder
        end
        if data.key? :pc
          data[:pc].each { |i| root << PC.new('PC', i).builder }
        end
        if data.key? :seznam_alternativ
          element = Ox::Element.new('SeznamAlternativ')
          data[:seznam_alternativ].each { |i| element << AlternativaPrislusenstviType.new('Alternativa', i).builder }
          root << element
        end
        if data.key? :seznam_prislusenstvi
          element = Ox::Element.new('SeznamPrislusenstvi')
          data[:seznam_prislusenstvi].each { |i| element << AlternativaPrislusenstviType.new('Prislusenstvi', i).builder }
          root << element
        end
        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end
        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end