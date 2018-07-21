module MoneyS3
  module Parsers
    class MoneyData
      include ParserCore::BaseParser

      def seznam_cinnosti
        array_of_at(Cinnost, ['SeznamCinnosti', 'Cinnost'])
      end

      def seznam_stredisek
        array_of_at(Stredisko, ['SeznamStredisek', 'Stredisko'])
      end

      def seznam_clen_dph
        array_of_at(ClenDPH, ['SeznamClenDPH', 'ClenDPH'])
      end

      def seznam_uc_osnov
        array_of_at(UcOsnovaType, ['SeznamUcOsnov', 'UcOsnova'])
      end

      def seznam_uc_pohybu
        array_of_at(UcPohybType, ['SeznamUcPohybu', 'UcPohyb'])
      end

      def seznam_zauctovani_dph
        array_of_at(ZauctovaniDPHType, ['SeznamZauctovaniDPH', 'ZauctovaniDPH'])
      end

      def seznam_zauctovani_dph_de
        array_of_at(ZauctovaniDPHDetype, ['SeznamZauctovaniDPH_DE', 'ZauctovaniDPH_DE'])
      end

      def seznam_predkontaci
        array_of_at(Predkontace, ['SeznamPredkontaci', 'Predkontace'])
      end

      def seznam_predkontaci_de
        array_of_at(PredkontaceDEType, ['SeznamPredkontaciDE', 'PredkontaceDE'])
      end

      def seznam_kurz_listku
        array_of_at(KurzListek, ['SeznamKurzListku', 'KurzListek'])
      end

      def seznam_parametru
        array_of_at(ParametrType, ['SeznamParametru', 'Parametr'])
      end

      def seznam_kategorii
        array_of_at(EkategorieType, ['SeznamKategorii', 'eKategorie'])
      end

      def seznam_bank_uctu_pokladen
        array_of_at(BankUcetPokladnaType, ['SeznamBankUctuPokladen', 'BankUcetPokladna'])
      end

      def seznam_typu_priplatku
        array_of_at(TypPriplatkuType, ['SeznamTypuPriplatku', 'TypPriplatku'])
      end

      def seznam_cen_hladin
        array_of_at(CenovaHladina, ['SeznamCenHladin', 'CenovaHladina'])
      end

      def seznam_firem
        array_of_at(Firma, ['SeznamFirem', 'Firma'])
      end

      def seznam_km_karta
        array_of_at(KmKarta, ['SeznamKmKarta', 'KmKarta'])
      end

      def seznam_zasoba
        array_of_at(Zasoba, ['SeznamZasoba', 'Zasoba'])
      end

      def seznam_skladu
        array_of_at(Sklad, ['SeznamSkladu', 'Sklad'])
      end

      def seznam_typ_kusovnik
        array_of_at(KusovnikType, ['SeznamTypKusovnik', 'TypKusovnik'])
      end

      def seznam_zak_kusovnik
        array_of_at(KusovnikType, ['SeznamZakKusovnik', 'ZakKusovnik'])
      end

      def seznam_zamestnancu
        array_of_at(ZamestnanecType, ['SeznamZamestnancu', 'Zamestnanec'])
      end

      def seznam_zakazka
        array_of_at(Zakazka, ['SeznamZakazka', 'Zakazka'])
      end

      def seznam_fakt_prij
        array_of_at(FaktPrij, ['SeznamFaktPrij', 'FaktPrij'])
      end

      def seznam_fakt_vyd
        array_of_at(FaktVyd, ['SeznamFaktVyd', 'FaktVyd'])
      end

      def seznam_pohledavek
        array_of_at(PohledavkaType, ['SeznamPohledavek', 'Pohledavka'])
      end

      def seznam_zavazku
        array_of_at(ZavazekType, ['SeznamZavazku', 'Zavazek'])
      end

      def seznam_int_dokl
        array_of_at(IntDokl, ['SeznamIntDokl', 'IntDokl'])
      end

      def seznam_pok_dokl
        array_of_at(PokDokl, ['SeznamPokDokl', 'PokDokl'])
      end

      def seznam_bank_dokl
        array_of_at(BankDokl, ['SeznamBankDokl', 'BankDokl'])
      end

      def seznam_fakt_prij_dpp
        array_of_at(FakturaType, ['SeznamFaktPrij_DPP', 'FaktPrij_DPP'])
      end

      def seznam_fakt_vyd_dpp
        array_of_at(FakturaType, ['SeznamFaktVyd_DPP', 'FaktVyd_DPP'])
      end

      def seznam_obj_prij
        array_of_at(ObjPrij, ['SeznamObjPrij', 'ObjPrij'])
      end

      def seznam_obj_vyd
        array_of_at(ObjVyd, ['SeznamObjVyd', 'ObjVyd'])
      end

      def seznam_nab_prij
        array_of_at(NabPrij, ['SeznamNabPrij', 'NabPrij'])
      end

      def seznam_nab_vyd
        array_of_at(NabVyd, ['SeznamNabVyd', 'NabVyd'])
      end

      def seznam_popt_prij
        array_of_at(PoptPrij, ['SeznamPoptPrij', 'PoptPrij'])
      end

      def seznam_popt_vyd
        array_of_at(PoptVyd, ['SeznamPoptVyd', 'PoptVyd'])
      end

      def seznam_prijemka
        array_of_at(Prijemka, ['SeznamPrijemka', 'Prijemka'])
      end

      def seznam_vydejka
        array_of_at(Vydejka, ['SeznamVydejka', 'Vydejka'])
      end

      def seznam_dl_prij
        array_of_at(DLPrij, ['SeznamDLPrij', 'DLPrij'])
      end

      def seznam_dl_vyd
        array_of_at(DLVyd, ['SeznamDLVyd', 'DLVyd'])
      end

      def seznam_prodejka
        array_of_at(Prodejka, ['SeznamProdejka', 'Prodejka'])
      end

      def seznam_prevodka
        array_of_at(Prevodka, ['SeznamPrevodka', 'Prevodka'])
      end

      def seznam_vyrobka
        array_of_at(Vyrobka, ['SeznamVyrobka', 'Vyrobka'])
      end

      def seznam_inv_dokl
        array_of_at(InvDoklType, ['SeznamInvDokl', 'InvDoklad'])
      end

      def seznam_mezd
        array_of_at(MzdaType, ['SeznamMezd', 'Mzda'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:seznam_cinnosti] = seznam_cinnosti.map(&:to_h) if has? 'SeznamCinnosti'
        hash[:seznam_stredisek] = seznam_stredisek.map(&:to_h) if has? 'SeznamStredisek'
        hash[:seznam_clen_dph] = seznam_clen_dph.map(&:to_h) if has? 'SeznamClenDPH'
        hash[:seznam_uc_osnov] = seznam_uc_osnov.map(&:to_h) if has? 'SeznamUcOsnov'
        hash[:seznam_uc_pohybu] = seznam_uc_pohybu.map(&:to_h) if has? 'SeznamUcPohybu'
        hash[:seznam_zauctovani_dph] = seznam_zauctovani_dph.map(&:to_h) if has? 'SeznamZauctovaniDPH'
        hash[:seznam_zauctovani_dph_de] = seznam_zauctovani_dph_de.map(&:to_h) if has? 'SeznamZauctovaniDPH_DE'
        hash[:seznam_predkontaci] = seznam_predkontaci.map(&:to_h) if has? 'SeznamPredkontaci'
        hash[:seznam_predkontaci_de] = seznam_predkontaci_de.map(&:to_h) if has? 'SeznamPredkontaciDE'
        hash[:seznam_kurz_listku] = seznam_kurz_listku.map(&:to_h) if has? 'SeznamKurzListku'
        hash[:seznam_parametru] = seznam_parametru.map(&:to_h) if has? 'SeznamParametru'
        hash[:seznam_kategorii] = seznam_kategorii.map(&:to_h) if has? 'SeznamKategorii'
        hash[:seznam_bank_uctu_pokladen] = seznam_bank_uctu_pokladen.map(&:to_h) if has? 'SeznamBankUctuPokladen'
        hash[:seznam_typu_priplatku] = seznam_typu_priplatku.map(&:to_h) if has? 'SeznamTypuPriplatku'
        hash[:seznam_cen_hladin] = seznam_cen_hladin.map(&:to_h) if has? 'SeznamCenHladin'
        hash[:seznam_firem] = seznam_firem.map(&:to_h) if has? 'SeznamFirem'
        hash[:seznam_km_karta] = seznam_km_karta.map(&:to_h) if has? 'SeznamKmKarta'
        hash[:seznam_zasoba] = seznam_zasoba.map(&:to_h) if has? 'SeznamZasoba'
        hash[:seznam_skladu] = seznam_skladu.map(&:to_h) if has? 'SeznamSkladu'
        hash[:seznam_typ_kusovnik] = seznam_typ_kusovnik.map(&:to_h) if has? 'SeznamTypKusovnik'
        hash[:seznam_zak_kusovnik] = seznam_zak_kusovnik.map(&:to_h) if has? 'SeznamZakKusovnik'
        hash[:seznam_zamestnancu] = seznam_zamestnancu.map(&:to_h) if has? 'SeznamZamestnancu'
        hash[:seznam_zakazka] = seznam_zakazka.map(&:to_h) if has? 'SeznamZakazka'
        hash[:seznam_fakt_prij] = seznam_fakt_prij.map(&:to_h) if has? 'SeznamFaktPrij'
        hash[:seznam_fakt_vyd] = seznam_fakt_vyd.map(&:to_h) if has? 'SeznamFaktVyd'
        hash[:seznam_pohledavek] = seznam_pohledavek.map(&:to_h) if has? 'SeznamPohledavek'
        hash[:seznam_zavazku] = seznam_zavazku.map(&:to_h) if has? 'SeznamZavazku'
        hash[:seznam_int_dokl] = seznam_int_dokl.map(&:to_h) if has? 'SeznamIntDokl'
        hash[:seznam_pok_dokl] = seznam_pok_dokl.map(&:to_h) if has? 'SeznamPokDokl'
        hash[:seznam_bank_dokl] = seznam_bank_dokl.map(&:to_h) if has? 'SeznamBankDokl'
        hash[:seznam_fakt_prij_dpp] = seznam_fakt_prij_dpp.map(&:to_h) if has? 'SeznamFaktPrij_DPP'
        hash[:seznam_fakt_vyd_dpp] = seznam_fakt_vyd_dpp.map(&:to_h) if has? 'SeznamFaktVyd_DPP'
        hash[:seznam_obj_prij] = seznam_obj_prij.map(&:to_h) if has? 'SeznamObjPrij'
        hash[:seznam_obj_vyd] = seznam_obj_vyd.map(&:to_h) if has? 'SeznamObjVyd'
        hash[:seznam_nab_prij] = seznam_nab_prij.map(&:to_h) if has? 'SeznamNabPrij'
        hash[:seznam_nab_vyd] = seznam_nab_vyd.map(&:to_h) if has? 'SeznamNabVyd'
        hash[:seznam_popt_prij] = seznam_popt_prij.map(&:to_h) if has? 'SeznamPoptPrij'
        hash[:seznam_popt_vyd] = seznam_popt_vyd.map(&:to_h) if has? 'SeznamPoptVyd'
        hash[:seznam_prijemka] = seznam_prijemka.map(&:to_h) if has? 'SeznamPrijemka'
        hash[:seznam_vydejka] = seznam_vydejka.map(&:to_h) if has? 'SeznamVydejka'
        hash[:seznam_dl_prij] = seznam_dl_prij.map(&:to_h) if has? 'SeznamDLPrij'
        hash[:seznam_dl_vyd] = seznam_dl_vyd.map(&:to_h) if has? 'SeznamDLVyd'
        hash[:seznam_prodejka] = seznam_prodejka.map(&:to_h) if has? 'SeznamProdejka'
        hash[:seznam_prevodka] = seznam_prevodka.map(&:to_h) if has? 'SeznamPrevodka'
        hash[:seznam_vyrobka] = seznam_vyrobka.map(&:to_h) if has? 'SeznamVyrobka'
        hash[:seznam_inv_dokl] = seznam_inv_dokl.map(&:to_h) if has? 'SeznamInvDokl'
        hash[:seznam_mezd] = seznam_mezd.map(&:to_h) if has? 'SeznamMezd'

        hash
      end
    end
  end
end