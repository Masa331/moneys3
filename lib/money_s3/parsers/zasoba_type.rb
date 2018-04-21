module MoneyS3
  module Parsers
    class ZasobaType
      include BaseParser

      def konfigurace
        submodel_at(Konfigurace, 'konfigurace')
      end

      def stav_zasoby
        submodel_at(StavZasobyType, 'StavZasoby')
      end

      def nak_cena
        at 'Nak_Cena'
      end

      def posl_n_cen
        at 'Posl_N_Cen'
      end

      def posl_nak
        at 'Posl_Nak'
      end

      def posl_prod
        at 'Posl_Prod'
      end

      def pozn
        at 'Pozn'
      end

      def skl_ucet
        at 'SklUcet'
      end

      def www_popis
        at 'WWWPopis'
      end

      def www_popis2
        at 'WWWPopis2'
      end

      def vyrobce
        at 'Vyrobce'
      end

      def sleva
        at 'Sleva'
      end

      def novinka
        at 'Novinka'
      end

      def pripravuje
        at 'Pripravuje'
      end

      def vyprodej
        at 'Vyprodej'
      end

      def zakaz_prode
        at 'ZakazProde'
      end

      def naz_podskup
        at 'NazPodskup'
      end

      def nomenklatu
        at 'Nomenklatu'
      end

      def url_zbozi
        at 'URL_Zbozi'
      end

      def v_sleva
        at 'VSleva'
      end

      def v_akce
        at 'VAkce'
      end

      def v_novinka
        at 'VNovinka'
      end

      def prva_strana
        at 'PrvaStrana'
      end

      def platnost_do
        at 'PlatnostDo'
      end

      def uc_pohyb
        submodel_at(UctyPohybuType, 'UcPohyb')
      end

      def uc_vyrobk_v
        at 'UcVyrobkV'
      end

      def dat_inv
        at 'DatInv'
      end

      def mn_inv
        at 'MnInv'
      end

      def eshop
        submodel_at(EshopZasobaType, 'eshop')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def skupina
        submodel_at(SkupinaZasobType, 'Skupina')
      end

      def posl_dod
        submodel_at(FirmaType, 'Posl_Dod')
      end

      def pc
        array_of_at(PC, ['PC'])
      end

      def seznam_alternativ
        array_of_at(AlternativaPrislusenstviType, ['SeznamAlternativ', 'Alternativa'])
      end

      def seznam_prislusenstvi
        array_of_at(AlternativaPrislusenstviType, ['SeznamPrislusenstvi', 'Prislusenstvi'])
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:konfigurace] = konfigurace.to_h_with_attrs if has? 'konfigurace'
        hash[:stav_zasoby] = stav_zasoby.to_h_with_attrs if has? 'StavZasoby'
        hash[:nak_cena] = nak_cena if has? 'Nak_Cena'
        hash[:posl_n_cen] = posl_n_cen if has? 'Posl_N_Cen'
        hash[:posl_nak] = posl_nak if has? 'Posl_Nak'
        hash[:posl_prod] = posl_prod if has? 'Posl_Prod'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:skl_ucet] = skl_ucet if has? 'SklUcet'
        hash[:www_popis] = www_popis if has? 'WWWPopis'
        hash[:www_popis2] = www_popis2 if has? 'WWWPopis2'
        hash[:vyrobce] = vyrobce if has? 'Vyrobce'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:novinka] = novinka if has? 'Novinka'
        hash[:pripravuje] = pripravuje if has? 'Pripravuje'
        hash[:vyprodej] = vyprodej if has? 'Vyprodej'
        hash[:zakaz_prode] = zakaz_prode if has? 'ZakazProde'
        hash[:naz_podskup] = naz_podskup if has? 'NazPodskup'
        hash[:nomenklatu] = nomenklatu if has? 'Nomenklatu'
        hash[:url_zbozi] = url_zbozi if has? 'URL_Zbozi'
        hash[:v_sleva] = v_sleva if has? 'VSleva'
        hash[:v_akce] = v_akce if has? 'VAkce'
        hash[:v_novinka] = v_novinka if has? 'VNovinka'
        hash[:prva_strana] = prva_strana if has? 'PrvaStrana'
        hash[:platnost_do] = platnost_do if has? 'PlatnostDo'
        hash[:uc_pohyb] = uc_pohyb.to_h_with_attrs if has? 'UcPohyb'
        hash[:uc_vyrobk_v] = uc_vyrobk_v if has? 'UcVyrobkV'
        hash[:dat_inv] = dat_inv if has? 'DatInv'
        hash[:mn_inv] = mn_inv if has? 'MnInv'
        hash[:eshop] = eshop.to_h_with_attrs if has? 'eshop'
        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'
        hash[:sklad] = sklad.to_h_with_attrs if has? 'Sklad'
        hash[:skupina] = skupina.to_h_with_attrs if has? 'Skupina'
        hash[:posl_dod] = posl_dod.to_h_with_attrs if has? 'Posl_Dod'
        hash[:pc] = pc.map(&:to_h_with_attrs) if has? 'PC'
        hash[:seznam_alternativ] = seznam_alternativ.map(&:to_h_with_attrs) if has? 'SeznamAlternativ'
        hash[:seznam_prislusenstvi] = seznam_prislusenstvi.map(&:to_h_with_attrs) if has? 'SeznamPrislusenstvi'
        hash[:vlajky] = vlajky.to_h_with_attrs if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end