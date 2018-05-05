module MoneyS3
  module Parsers
    class MoneyData
      include ParserCore::BaseParser

      def seznam_cinnosti
        submodel_at(SeznamCinnosti, 'SeznamCinnosti')
      end

      def seznam_stredisek
        submodel_at(SeznamStredisek, 'SeznamStredisek')
      end

      def seznam_clen_dph
        submodel_at(SeznamClenDPH, 'SeznamClenDPH')
      end

      def seznam_uc_osnov
        submodel_at(SeznamUcOsnov, 'SeznamUcOsnov')
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
        submodel_at(SeznamPredkontaci, 'SeznamPredkontaci')
      end

      def seznam_predkontaci_de
        submodel_at(SeznamPredkontaciDE, 'SeznamPredkontaciDE')
      end

      def seznam_kurz_listku
        submodel_at(SeznamKurzListku, 'SeznamKurzListku')
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
        submodel_at(SeznamCenHladin, 'SeznamCenHladin')
      end

      def seznam_firem
        submodel_at(SeznamFirem, 'SeznamFirem')
      end

      def seznam_km_karta
        submodel_at(SeznamKmKarta, 'SeznamKmKarta')
      end

      def seznam_zasoba
        submodel_at(SeznamZasoba, 'SeznamZasoba')
      end

      def seznam_skladu
        submodel_at(SeznamSkladu, 'SeznamSkladu')
      end

      def seznam_typ_kusovnik
        submodel_at(SeznamTypKusovnik, 'SeznamTypKusovnik')
      end

      def seznam_zak_kusovnik
        submodel_at(SeznamZakKusovnik, 'SeznamZakKusovnik')
      end

      def seznam_zamestnancu
        submodel_at(SeznamZamestnancu, 'SeznamZamestnancu')
      end

      def seznam_zakazka
        submodel_at(SeznamZakazka, 'SeznamZakazka')
      end

      def seznam_fakt_prij
        submodel_at(SeznamFaktPrij, 'SeznamFaktPrij')
      end

      def seznam_fakt_vyd
        submodel_at(SeznamFaktVyd, 'SeznamFaktVyd')
      end

      def seznam_pohledavek
        array_of_at(PohledavkaType, ['SeznamPohledavek', 'Pohledavka'])
      end

      def seznam_zavazku
        array_of_at(ZavazekType, ['SeznamZavazku', 'Zavazek'])
      end

      def seznam_int_dokl
        submodel_at(SeznamIntDokl, 'SeznamIntDokl')
      end

      def seznam_pok_dokl
        submodel_at(SeznamPokDokl, 'SeznamPokDokl')
      end

      def seznam_bank_dokl
        submodel_at(SeznamBankDokl, 'SeznamBankDokl')
      end

      def seznam_fakt_prij_dpp
        array_of_at(FakturaType, ['SeznamFaktPrij_DPP', 'FaktPrij_DPP'])
      end

      def seznam_fakt_vyd_dpp
        array_of_at(FakturaType, ['SeznamFaktVyd_DPP', 'FaktVyd_DPP'])
      end

      def seznam_obj_prij
        submodel_at(SeznamObjPrij, 'SeznamObjPrij')
      end

      def seznam_obj_vyd
        submodel_at(SeznamObjVyd, 'SeznamObjVyd')
      end

      def seznam_nab_prij
        submodel_at(SeznamNabPrij, 'SeznamNabPrij')
      end

      def seznam_nab_vyd
        submodel_at(SeznamNabVyd, 'SeznamNabVyd')
      end

      def seznam_popt_prij
        submodel_at(SeznamPoptPrij, 'SeznamPoptPrij')
      end

      def seznam_popt_vyd
        submodel_at(SeznamPoptVyd, 'SeznamPoptVyd')
      end

      def seznam_prijemka
        submodel_at(SeznamPrijemka, 'SeznamPrijemka')
      end

      def seznam_vydejka
        submodel_at(SeznamVydejka, 'SeznamVydejka')
      end

      def seznam_dl_prij
        submodel_at(SeznamDLPrij, 'SeznamDLPrij')
      end

      def seznam_dl_vyd
        submodel_at(SeznamDLVyd, 'SeznamDLVyd')
      end

      def seznam_prodejka
        submodel_at(SeznamProdejka, 'SeznamProdejka')
      end

      def seznam_prevodka
        submodel_at(SeznamPrevodka, 'SeznamPrevodka')
      end

      def seznam_vyrobka
        submodel_at(SeznamVyrobka, 'SeznamVyrobka')
      end

      def seznam_inv_dokl
        submodel_at(SeznamInvDokl, 'SeznamInvDokl')
      end

      def seznam_mezd
        submodel_at(SeznamMezd, 'SeznamMezd')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:seznam_cinnosti] = seznam_cinnosti.to_h_with_attrs if has? 'SeznamCinnosti'
        hash[:seznam_stredisek] = seznam_stredisek.to_h_with_attrs if has? 'SeznamStredisek'
        hash[:seznam_clen_dph] = seznam_clen_dph.to_h_with_attrs if has? 'SeznamClenDPH'
        hash[:seznam_uc_osnov] = seznam_uc_osnov.to_h_with_attrs if has? 'SeznamUcOsnov'
        hash[:seznam_uc_pohybu] = seznam_uc_pohybu.map(&:to_h_with_attrs) if has? 'SeznamUcPohybu'
        hash[:seznam_zauctovani_dph] = seznam_zauctovani_dph.map(&:to_h_with_attrs) if has? 'SeznamZauctovaniDPH'
        hash[:seznam_zauctovani_dph_de] = seznam_zauctovani_dph_de.map(&:to_h_with_attrs) if has? 'SeznamZauctovaniDPH_DE'
        hash[:seznam_predkontaci] = seznam_predkontaci.to_h_with_attrs if has? 'SeznamPredkontaci'
        hash[:seznam_predkontaci_de] = seznam_predkontaci_de.to_h_with_attrs if has? 'SeznamPredkontaciDE'
        hash[:seznam_kurz_listku] = seznam_kurz_listku.to_h_with_attrs if has? 'SeznamKurzListku'
        hash[:seznam_parametru] = seznam_parametru.map(&:to_h_with_attrs) if has? 'SeznamParametru'
        hash[:seznam_kategorii] = seznam_kategorii.map(&:to_h_with_attrs) if has? 'SeznamKategorii'
        hash[:seznam_bank_uctu_pokladen] = seznam_bank_uctu_pokladen.map(&:to_h_with_attrs) if has? 'SeznamBankUctuPokladen'
        hash[:seznam_typu_priplatku] = seznam_typu_priplatku.map(&:to_h_with_attrs) if has? 'SeznamTypuPriplatku'
        hash[:seznam_cen_hladin] = seznam_cen_hladin.to_h_with_attrs if has? 'SeznamCenHladin'
        hash[:seznam_firem] = seznam_firem.to_h_with_attrs if has? 'SeznamFirem'
        hash[:seznam_km_karta] = seznam_km_karta.to_h_with_attrs if has? 'SeznamKmKarta'
        hash[:seznam_zasoba] = seznam_zasoba.to_h_with_attrs if has? 'SeznamZasoba'
        hash[:seznam_skladu] = seznam_skladu.to_h_with_attrs if has? 'SeznamSkladu'
        hash[:seznam_typ_kusovnik] = seznam_typ_kusovnik.to_h_with_attrs if has? 'SeznamTypKusovnik'
        hash[:seznam_zak_kusovnik] = seznam_zak_kusovnik.to_h_with_attrs if has? 'SeznamZakKusovnik'
        hash[:seznam_zamestnancu] = seznam_zamestnancu.to_h_with_attrs if has? 'SeznamZamestnancu'
        hash[:seznam_zakazka] = seznam_zakazka.to_h_with_attrs if has? 'SeznamZakazka'
        hash[:seznam_fakt_prij] = seznam_fakt_prij.to_h_with_attrs if has? 'SeznamFaktPrij'
        hash[:seznam_fakt_vyd] = seznam_fakt_vyd.to_h_with_attrs if has? 'SeznamFaktVyd'
        hash[:seznam_pohledavek] = seznam_pohledavek.map(&:to_h_with_attrs) if has? 'SeznamPohledavek'
        hash[:seznam_zavazku] = seznam_zavazku.map(&:to_h_with_attrs) if has? 'SeznamZavazku'
        hash[:seznam_int_dokl] = seznam_int_dokl.to_h_with_attrs if has? 'SeznamIntDokl'
        hash[:seznam_pok_dokl] = seznam_pok_dokl.to_h_with_attrs if has? 'SeznamPokDokl'
        hash[:seznam_bank_dokl] = seznam_bank_dokl.to_h_with_attrs if has? 'SeznamBankDokl'
        hash[:seznam_fakt_prij_dpp] = seznam_fakt_prij_dpp.map(&:to_h_with_attrs) if has? 'SeznamFaktPrij_DPP'
        hash[:seznam_fakt_vyd_dpp] = seznam_fakt_vyd_dpp.map(&:to_h_with_attrs) if has? 'SeznamFaktVyd_DPP'
        hash[:seznam_obj_prij] = seznam_obj_prij.to_h_with_attrs if has? 'SeznamObjPrij'
        hash[:seznam_obj_vyd] = seznam_obj_vyd.to_h_with_attrs if has? 'SeznamObjVyd'
        hash[:seznam_nab_prij] = seznam_nab_prij.to_h_with_attrs if has? 'SeznamNabPrij'
        hash[:seznam_nab_vyd] = seznam_nab_vyd.to_h_with_attrs if has? 'SeznamNabVyd'
        hash[:seznam_popt_prij] = seznam_popt_prij.to_h_with_attrs if has? 'SeznamPoptPrij'
        hash[:seznam_popt_vyd] = seznam_popt_vyd.to_h_with_attrs if has? 'SeznamPoptVyd'
        hash[:seznam_prijemka] = seznam_prijemka.to_h_with_attrs if has? 'SeznamPrijemka'
        hash[:seznam_vydejka] = seznam_vydejka.to_h_with_attrs if has? 'SeznamVydejka'
        hash[:seznam_dl_prij] = seznam_dl_prij.to_h_with_attrs if has? 'SeznamDLPrij'
        hash[:seznam_dl_vyd] = seznam_dl_vyd.to_h_with_attrs if has? 'SeznamDLVyd'
        hash[:seznam_prodejka] = seznam_prodejka.to_h_with_attrs if has? 'SeznamProdejka'
        hash[:seznam_prevodka] = seznam_prevodka.to_h_with_attrs if has? 'SeznamPrevodka'
        hash[:seznam_vyrobka] = seznam_vyrobka.to_h_with_attrs if has? 'SeznamVyrobka'
        hash[:seznam_inv_dokl] = seznam_inv_dokl.to_h_with_attrs if has? 'SeznamInvDokl'
        hash[:seznam_mezd] = seznam_mezd.to_h_with_attrs if has? 'SeznamMezd'

        hash
      end
    end
  end
end