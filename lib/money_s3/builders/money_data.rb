module MoneyS3
  module Builders
    class MoneyData
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :seznam_cinnosti
          element = Ox::Element.new('SeznamCinnosti')
          data[:seznam_cinnosti].each { |i| element << Cinnost.new('Cinnost', i).builder }
          root << element
        end
        if data.key? :seznam_stredisek
          element = Ox::Element.new('SeznamStredisek')
          data[:seznam_stredisek].each { |i| element << Stredisko.new('Stredisko', i).builder }
          root << element
        end
        if data.key? :seznam_clen_dph
          element = Ox::Element.new('SeznamClenDPH')
          data[:seznam_clen_dph].each { |i| element << ClenDPH.new('ClenDPH', i).builder }
          root << element
        end
        if data.key? :seznam_uc_osnov
          element = Ox::Element.new('SeznamUcOsnov')
          data[:seznam_uc_osnov].each { |i| element << UcOsnovaType.new('UcOsnova', i).builder }
          root << element
        end
        if data.key? :seznam_uc_pohybu
          element = Ox::Element.new('SeznamUcPohybu')
          data[:seznam_uc_pohybu].each { |i| element << UcPohybType.new('UcPohyb', i).builder }
          root << element
        end
        if data.key? :seznam_zauctovani_dph
          element = Ox::Element.new('SeznamZauctovaniDPH')
          data[:seznam_zauctovani_dph].each { |i| element << ZauctovaniDPHType.new('ZauctovaniDPH', i).builder }
          root << element
        end
        if data.key? :seznam_zauctovani_dph_de
          element = Ox::Element.new('SeznamZauctovaniDPH_DE')
          data[:seznam_zauctovani_dph_de].each { |i| element << ZauctovaniDPHDetype.new('ZauctovaniDPH_DE', i).builder }
          root << element
        end
        if data.key? :seznam_predkontaci
          element = Ox::Element.new('SeznamPredkontaci')
          data[:seznam_predkontaci].each { |i| element << Predkontace.new('Predkontace', i).builder }
          root << element
        end
        if data.key? :seznam_predkontaci_de
          element = Ox::Element.new('SeznamPredkontaciDE')
          data[:seznam_predkontaci_de].each { |i| element << PredkontaceDEType.new('PredkontaceDE', i).builder }
          root << element
        end
        if data.key? :seznam_kurz_listku
          element = Ox::Element.new('SeznamKurzListku')
          data[:seznam_kurz_listku].each { |i| element << KurzListek.new('KurzListek', i).builder }
          root << element
        end
        if data.key? :seznam_parametru
          element = Ox::Element.new('SeznamParametru')
          data[:seznam_parametru].each { |i| element << ParametrType.new('Parametr', i).builder }
          root << element
        end
        if data.key? :seznam_kategorii
          element = Ox::Element.new('SeznamKategorii')
          data[:seznam_kategorii].each { |i| element << EkategorieType.new('eKategorie', i).builder }
          root << element
        end
        if data.key? :seznam_bank_uctu_pokladen
          element = Ox::Element.new('SeznamBankUctuPokladen')
          data[:seznam_bank_uctu_pokladen].each { |i| element << BankUcetPokladnaType.new('BankUcetPokladna', i).builder }
          root << element
        end
        if data.key? :seznam_typu_priplatku
          element = Ox::Element.new('SeznamTypuPriplatku')
          data[:seznam_typu_priplatku].each { |i| element << TypPriplatkuType.new('TypPriplatku', i).builder }
          root << element
        end
        if data.key? :seznam_cen_hladin
          element = Ox::Element.new('SeznamCenHladin')
          data[:seznam_cen_hladin].each { |i| element << CenovaHladina.new('CenovaHladina', i).builder }
          root << element
        end
        if data.key? :seznam_firem
          element = Ox::Element.new('SeznamFirem')
          data[:seznam_firem].each { |i| element << Firma.new('Firma', i).builder }
          root << element
        end
        if data.key? :seznam_km_karta
          element = Ox::Element.new('SeznamKmKarta')
          data[:seznam_km_karta].each { |i| element << KmKarta.new('KmKarta', i).builder }
          root << element
        end
        if data.key? :seznam_zasoba
          element = Ox::Element.new('SeznamZasoba')
          data[:seznam_zasoba].each { |i| element << Zasoba.new('Zasoba', i).builder }
          root << element
        end
        if data.key? :seznam_skladu
          element = Ox::Element.new('SeznamSkladu')
          data[:seznam_skladu].each { |i| element << Sklad.new('Sklad', i).builder }
          root << element
        end
        if data.key? :seznam_typ_kusovnik
          element = Ox::Element.new('SeznamTypKusovnik')
          data[:seznam_typ_kusovnik].each { |i| element << KusovnikType.new('TypKusovnik', i).builder }
          root << element
        end
        if data.key? :seznam_zak_kusovnik
          element = Ox::Element.new('SeznamZakKusovnik')
          data[:seznam_zak_kusovnik].each { |i| element << KusovnikType.new('ZakKusovnik', i).builder }
          root << element
        end
        if data.key? :seznam_zamestnancu
          element = Ox::Element.new('SeznamZamestnancu')
          data[:seznam_zamestnancu].each { |i| element << ZamestnanecType.new('Zamestnanec', i).builder }
          root << element
        end
        if data.key? :seznam_zakazka
          element = Ox::Element.new('SeznamZakazka')
          data[:seznam_zakazka].each { |i| element << Zakazka.new('Zakazka', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_prij
          element = Ox::Element.new('SeznamFaktPrij')
          data[:seznam_fakt_prij].each { |i| element << FaktPrij.new('FaktPrij', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_vyd
          element = Ox::Element.new('SeznamFaktVyd')
          data[:seznam_fakt_vyd].each { |i| element << FaktVyd.new('FaktVyd', i).builder }
          root << element
        end
        if data.key? :seznam_pohledavek
          element = Ox::Element.new('SeznamPohledavek')
          data[:seznam_pohledavek].each { |i| element << PohledavkaType.new('Pohledavka', i).builder }
          root << element
        end
        if data.key? :seznam_zavazku
          element = Ox::Element.new('SeznamZavazku')
          data[:seznam_zavazku].each { |i| element << ZavazekType.new('Zavazek', i).builder }
          root << element
        end
        if data.key? :seznam_int_dokl
          element = Ox::Element.new('SeznamIntDokl')
          data[:seznam_int_dokl].each { |i| element << IntDokl.new('IntDokl', i).builder }
          root << element
        end
        if data.key? :seznam_pok_dokl
          element = Ox::Element.new('SeznamPokDokl')
          data[:seznam_pok_dokl].each { |i| element << PokDokl.new('PokDokl', i).builder }
          root << element
        end
        if data.key? :seznam_bank_dokl
          element = Ox::Element.new('SeznamBankDokl')
          data[:seznam_bank_dokl].each { |i| element << BankDokl.new('BankDokl', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_prij_dpp
          element = Ox::Element.new('SeznamFaktPrij_DPP')
          data[:seznam_fakt_prij_dpp].each { |i| element << FakturaType.new('FaktPrij_DPP', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_vyd_dpp
          element = Ox::Element.new('SeznamFaktVyd_DPP')
          data[:seznam_fakt_vyd_dpp].each { |i| element << FakturaType.new('FaktVyd_DPP', i).builder }
          root << element
        end
        if data.key? :seznam_obj_prij
          element = Ox::Element.new('SeznamObjPrij')
          data[:seznam_obj_prij].each { |i| element << ObjPrij.new('ObjPrij', i).builder }
          root << element
        end
        if data.key? :seznam_obj_vyd
          element = Ox::Element.new('SeznamObjVyd')
          data[:seznam_obj_vyd].each { |i| element << ObjVyd.new('ObjVyd', i).builder }
          root << element
        end
        if data.key? :seznam_nab_prij
          element = Ox::Element.new('SeznamNabPrij')
          data[:seznam_nab_prij].each { |i| element << NabPrij.new('NabPrij', i).builder }
          root << element
        end
        if data.key? :seznam_nab_vyd
          element = Ox::Element.new('SeznamNabVyd')
          data[:seznam_nab_vyd].each { |i| element << NabVyd.new('NabVyd', i).builder }
          root << element
        end
        if data.key? :seznam_popt_prij
          element = Ox::Element.new('SeznamPoptPrij')
          data[:seznam_popt_prij].each { |i| element << PoptPrij.new('PoptPrij', i).builder }
          root << element
        end
        if data.key? :seznam_popt_vyd
          element = Ox::Element.new('SeznamPoptVyd')
          data[:seznam_popt_vyd].each { |i| element << PoptVyd.new('PoptVyd', i).builder }
          root << element
        end
        if data.key? :seznam_prijemka
          element = Ox::Element.new('SeznamPrijemka')
          data[:seznam_prijemka].each { |i| element << Prijemka.new('Prijemka', i).builder }
          root << element
        end
        if data.key? :seznam_vydejka
          element = Ox::Element.new('SeznamVydejka')
          data[:seznam_vydejka].each { |i| element << Vydejka.new('Vydejka', i).builder }
          root << element
        end
        if data.key? :seznam_dl_prij
          element = Ox::Element.new('SeznamDLPrij')
          data[:seznam_dl_prij].each { |i| element << DLPrij.new('DLPrij', i).builder }
          root << element
        end
        if data.key? :seznam_dl_vyd
          element = Ox::Element.new('SeznamDLVyd')
          data[:seznam_dl_vyd].each { |i| element << DLVyd.new('DLVyd', i).builder }
          root << element
        end
        if data.key? :seznam_prodejka
          element = Ox::Element.new('SeznamProdejka')
          data[:seznam_prodejka].each { |i| element << Prodejka.new('Prodejka', i).builder }
          root << element
        end
        if data.key? :seznam_prevodka
          element = Ox::Element.new('SeznamPrevodka')
          data[:seznam_prevodka].each { |i| element << Prevodka.new('Prevodka', i).builder }
          root << element
        end
        if data.key? :seznam_vyrobka
          element = Ox::Element.new('SeznamVyrobka')
          data[:seznam_vyrobka].each { |i| element << Vyrobka.new('Vyrobka', i).builder }
          root << element
        end
        if data.key? :seznam_inv_dokl
          element = Ox::Element.new('SeznamInvDokl')
          data[:seznam_inv_dokl].each { |i| element << InvDoklType.new('InvDoklad', i).builder }
          root << element
        end
        if data.key? :seznam_mezd
          element = Ox::Element.new('SeznamMezd')
          data[:seznam_mezd].each { |i| element << MzdaType.new('Mzda', i).builder }
          root << element
        end

        root
      end
    end
  end
end