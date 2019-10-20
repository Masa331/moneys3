module MoneyS3
  module Parsers
    class ZasobaType
      include ParserCore::BaseParser

      def konfigurace
        submodel_at(Konfigurace, 'konfigurace')
      end

      def stav_zasoby
        submodel_at(StavZasobyType, 'StavZasoby')
      end

      def nak_cena
        at 'Nak_Cena'
      end

      def nak_cena_attributes
        attributes_at 'Nak_Cena'
      end

      def posl_n_cen
        at 'Posl_N_Cen'
      end

      def posl_n_cen_attributes
        attributes_at 'Posl_N_Cen'
      end

      def posl_nak
        at 'Posl_Nak'
      end

      def posl_nak_attributes
        attributes_at 'Posl_Nak'
      end

      def posl_prod
        at 'Posl_Prod'
      end

      def posl_prod_attributes
        attributes_at 'Posl_Prod'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def skl_ucet
        at 'SklUcet'
      end

      def skl_ucet_attributes
        attributes_at 'SklUcet'
      end

      def www_popis
        at 'WWWPopis'
      end

      def www_popis_attributes
        attributes_at 'WWWPopis'
      end

      def www_popis2
        at 'WWWPopis2'
      end

      def www_popis2_attributes
        attributes_at 'WWWPopis2'
      end

      def vyrobce
        at 'Vyrobce'
      end

      def vyrobce_attributes
        attributes_at 'Vyrobce'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def novinka
        at 'Novinka'
      end

      def novinka_attributes
        attributes_at 'Novinka'
      end

      def pripravuje
        at 'Pripravuje'
      end

      def pripravuje_attributes
        attributes_at 'Pripravuje'
      end

      def vyprodej
        at 'Vyprodej'
      end

      def vyprodej_attributes
        attributes_at 'Vyprodej'
      end

      def zakaz_prode
        at 'ZakazProde'
      end

      def zakaz_prode_attributes
        attributes_at 'ZakazProde'
      end

      def naz_podskup
        at 'NazPodskup'
      end

      def naz_podskup_attributes
        attributes_at 'NazPodskup'
      end

      def nomenklatu
        at 'Nomenklatu'
      end

      def nomenklatu_attributes
        attributes_at 'Nomenklatu'
      end

      def url_zbozi
        at 'URL_Zbozi'
      end

      def url_zbozi_attributes
        attributes_at 'URL_Zbozi'
      end

      def v_sleva
        at 'VSleva'
      end

      def v_sleva_attributes
        attributes_at 'VSleva'
      end

      def v_akce
        at 'VAkce'
      end

      def v_akce_attributes
        attributes_at 'VAkce'
      end

      def v_novinka
        at 'VNovinka'
      end

      def v_novinka_attributes
        attributes_at 'VNovinka'
      end

      def prva_strana
        at 'PrvaStrana'
      end

      def prva_strana_attributes
        attributes_at 'PrvaStrana'
      end

      def platnost_do
        at 'PlatnostDo'
      end

      def platnost_do_attributes
        attributes_at 'PlatnostDo'
      end

      def uc_pohyb
        submodel_at(UctyPohybuType, 'UcPohyb')
      end

      def uc_vyrobk_v
        at 'UcVyrobkV'
      end

      def uc_vyrobk_v_attributes
        attributes_at 'UcVyrobkV'
      end

      def dat_inv
        at 'DatInv'
      end

      def dat_inv_attributes
        attributes_at 'DatInv'
      end

      def mn_inv
        at 'MnInv'
      end

      def mn_inv_attributes
        attributes_at 'MnInv'
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

      def uzivatelska_pole
        at 'UzivatelskaPole'
      end

      def uzivatelska_pole_attributes
        attributes_at 'UzivatelskaPole'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:konfigurace] = konfigurace.to_h if has? 'konfigurace'
        hash[:stav_zasoby] = stav_zasoby.to_h if has? 'StavZasoby'
        hash[:nak_cena] = nak_cena if has? 'Nak_Cena'
        hash[:nak_cena_attributes] = nak_cena_attributes if has? 'Nak_Cena'
        hash[:posl_n_cen] = posl_n_cen if has? 'Posl_N_Cen'
        hash[:posl_n_cen_attributes] = posl_n_cen_attributes if has? 'Posl_N_Cen'
        hash[:posl_nak] = posl_nak if has? 'Posl_Nak'
        hash[:posl_nak_attributes] = posl_nak_attributes if has? 'Posl_Nak'
        hash[:posl_prod] = posl_prod if has? 'Posl_Prod'
        hash[:posl_prod_attributes] = posl_prod_attributes if has? 'Posl_Prod'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:skl_ucet] = skl_ucet if has? 'SklUcet'
        hash[:skl_ucet_attributes] = skl_ucet_attributes if has? 'SklUcet'
        hash[:www_popis] = www_popis if has? 'WWWPopis'
        hash[:www_popis_attributes] = www_popis_attributes if has? 'WWWPopis'
        hash[:www_popis2] = www_popis2 if has? 'WWWPopis2'
        hash[:www_popis2_attributes] = www_popis2_attributes if has? 'WWWPopis2'
        hash[:vyrobce] = vyrobce if has? 'Vyrobce'
        hash[:vyrobce_attributes] = vyrobce_attributes if has? 'Vyrobce'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:novinka] = novinka if has? 'Novinka'
        hash[:novinka_attributes] = novinka_attributes if has? 'Novinka'
        hash[:pripravuje] = pripravuje if has? 'Pripravuje'
        hash[:pripravuje_attributes] = pripravuje_attributes if has? 'Pripravuje'
        hash[:vyprodej] = vyprodej if has? 'Vyprodej'
        hash[:vyprodej_attributes] = vyprodej_attributes if has? 'Vyprodej'
        hash[:zakaz_prode] = zakaz_prode if has? 'ZakazProde'
        hash[:zakaz_prode_attributes] = zakaz_prode_attributes if has? 'ZakazProde'
        hash[:naz_podskup] = naz_podskup if has? 'NazPodskup'
        hash[:naz_podskup_attributes] = naz_podskup_attributes if has? 'NazPodskup'
        hash[:nomenklatu] = nomenklatu if has? 'Nomenklatu'
        hash[:nomenklatu_attributes] = nomenklatu_attributes if has? 'Nomenklatu'
        hash[:url_zbozi] = url_zbozi if has? 'URL_Zbozi'
        hash[:url_zbozi_attributes] = url_zbozi_attributes if has? 'URL_Zbozi'
        hash[:v_sleva] = v_sleva if has? 'VSleva'
        hash[:v_sleva_attributes] = v_sleva_attributes if has? 'VSleva'
        hash[:v_akce] = v_akce if has? 'VAkce'
        hash[:v_akce_attributes] = v_akce_attributes if has? 'VAkce'
        hash[:v_novinka] = v_novinka if has? 'VNovinka'
        hash[:v_novinka_attributes] = v_novinka_attributes if has? 'VNovinka'
        hash[:prva_strana] = prva_strana if has? 'PrvaStrana'
        hash[:prva_strana_attributes] = prva_strana_attributes if has? 'PrvaStrana'
        hash[:platnost_do] = platnost_do if has? 'PlatnostDo'
        hash[:platnost_do_attributes] = platnost_do_attributes if has? 'PlatnostDo'
        hash[:uc_pohyb] = uc_pohyb.to_h if has? 'UcPohyb'
        hash[:uc_vyrobk_v] = uc_vyrobk_v if has? 'UcVyrobkV'
        hash[:uc_vyrobk_v_attributes] = uc_vyrobk_v_attributes if has? 'UcVyrobkV'
        hash[:dat_inv] = dat_inv if has? 'DatInv'
        hash[:dat_inv_attributes] = dat_inv_attributes if has? 'DatInv'
        hash[:mn_inv] = mn_inv if has? 'MnInv'
        hash[:mn_inv_attributes] = mn_inv_attributes if has? 'MnInv'
        hash[:eshop] = eshop.to_h if has? 'eshop'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:sklad] = sklad.to_h if has? 'Sklad'
        hash[:skupina] = skupina.to_h if has? 'Skupina'
        hash[:posl_dod] = posl_dod.to_h if has? 'Posl_Dod'
        hash[:pc] = pc.map(&:to_h) if has? 'PC'
        hash[:seznam_alternativ] = seznam_alternativ.map(&:to_h) if has? 'SeznamAlternativ'
        hash[:seznam_prislusenstvi] = seznam_prislusenstvi.map(&:to_h) if has? 'SeznamPrislusenstvi'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'
        hash[:uzivatelska_pole] = uzivatelska_pole if has? 'UzivatelskaPole'
        hash[:uzivatelska_pole_attributes] = uzivatelska_pole_attributes if has? 'UzivatelskaPole'

        hash
      end
    end
  end
end