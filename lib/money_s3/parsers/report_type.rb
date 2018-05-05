module MoneyS3
  module Parsers
    class ReportType < MessageRootType
      include ParserCore::BaseParser

      def control
        submodel_at(Control, 'Control')
      end

      def seznam_firem
        array_of_at(MsgFirmaType, ['SeznamFirem', 'Firma'])
      end

      def seznam_km_karta
        array_of_at(MsgKmKartaType, ['SeznamKmKarta', 'KmKarta'])
      end

      def seznam_zasoba
        array_of_at(MsgZasobaType, ['SeznamZasoba', 'Zasoba'])
      end

      def seznam_fakt_prij
        array_of_at(MsgFaktType, ['SeznamFaktPrij', 'FaktPrij'])
      end

      def seznam_fakt_vyd
        array_of_at(MsgFaktType, ['SeznamFaktVyd', 'FaktVyd'])
      end

      def seznam_obj_prij
        array_of_at(MsgObjType, ['SeznamObjPrij', 'ObjPrij'])
      end

      def seznam_obj_vyd
        array_of_at(MsgObjType, ['SeznamObjVyd', 'ObjVyd'])
      end

      def seznam_nab_prij
        array_of_at(MsgObjType, ['SeznamNabPrij', 'NabPrij'])
      end

      def seznam_nab_vyd
        array_of_at(MsgObjType, ['SeznamNabVyd', 'NabVyd'])
      end

      def seznam_popt_prij
        array_of_at(MsgObjType, ['SeznamPoptPrij', 'PoptPrij'])
      end

      def seznam_popt_vyd
        array_of_at(MsgObjType, ['SeznamPoptVyd', 'PoptVyd'])
      end

      def seznam_pok_dokl
        array_of_at(MsgPokDoklType, ['SeznamPokDokl', 'PokDokl'])
      end

      def seznam_ban_dokl
        array_of_at(MsgBanDoklType, ['SeznamBanDokl', 'BanDokl'])
      end

      def seznam_int_dokl
        array_of_at(MsgIntDoklType, ['SeznamIntDokl', 'IntDokl'])
      end

      def seznam_fakt_prij_dpp
        array_of_at(MsgFaktDpptype, ['SeznamFaktPrij_DPP', 'FaktPrij_DPP'])
      end

      def seznam_fakt_vyd_dpp
        array_of_at(MsgFaktDpptype, ['SeznamFaktVyd_DPP', 'FaktVyd_DPP'])
      end

      def seznam_pohledavek
        array_of_at(MsgPohledavkaType, ['SeznamPohledavek', 'Pohledavka'])
      end

      def seznam_zavazku
        array_of_at(MsgZavazekType, ['SeznamZavazku', 'Zavazek'])
      end

      def seznam_prijemka
        array_of_at(MsgSklDoklType, ['SeznamPrijemka', 'Prijemka'])
      end

      def seznam_vydejka
        array_of_at(MsgSklDoklType, ['SeznamVydejka', 'Vydejka'])
      end

      def seznam_dl_prij
        array_of_at(MsgSklDoklType, ['SeznamDLPrij', 'DlPrij'])
      end

      def seznam_dl_vyd
        array_of_at(MsgSklDoklType, ['SeznamDLVyd', 'DLVyd'])
      end

      def seznam_prodejka
        array_of_at(MsgSklDoklType, ['SeznamProdejka', 'Prodejka'])
      end

      def seznam_prevodka
        array_of_at(MsgPrevodkaType, ['SeznamPrevodka', 'Prevodka'])
      end

      def seznam_vyrobka
        array_of_at(MsgSklDoklType, ['SeznamVyrobka', 'Vyrobka'])
      end

      def seznam_inv_dokl
        array_of_at(MsgInvDoklType, ['SeznamInvDokl', 'InvDokl'])
      end

      def seznam_stredisek
        array_of_at(MsgStrediskoType, ['SeznamStredisek', 'Stredisko'])
      end

      def seznam_zakazka
        array_of_at(MsgZakazkaType, ['SeznamZakazka', 'Zakazka'])
      end

      def seznam_cinnosti
        array_of_at(MsgCinnostType, ['SeznamCinnosti', 'Cinnost'])
      end

      def seznam_clen_dph
        array_of_at(MsgClenDPHType, ['SeznamClenDPH', 'ClenDPH'])
      end

      def seznam_uc_osnov
        array_of_at(MsgUcOsnovType, ['SeznamUcOsnov', 'UcOsnova'])
      end

      def seznam_uc_pohybu
        array_of_at(MsgUcPohybType, ['SeznamUcPohybu', 'UcPohyb'])
      end

      def seznam_predkontaci
        array_of_at(MsgPredkontaceType, ['SeznamPredkontaci', 'Predkontace'])
      end

      def seznam_predkontaci_de
        array_of_at(MsgPredkontaceDEType, ['SeznamPredkontaciDE', 'PredkontaceDE'])
      end

      def seznam_zauctovani_dph
        array_of_at(MsgZauctovaniDPHType, ['SeznamZauctovaniDPH', 'ZauctovaniDPH'])
      end

      def seznam_zauctovani_dph_de
        array_of_at(MsgZauctovaniDPHDetype, ['SeznamZauctovaniDPH_DE', 'ZauctovaniDPH_DE'])
      end

      def seznam_bank_uctu_pokladen
        array_of_at(MsgBankUcetPokladnaType, ['SeznamBankUctuPokladen', 'BankUcetPokladna'])
      end

      def seznam_mezd
        array_of_at(Mzda, ['SeznamMezd', 'Mzda'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:control] = control.to_h_with_attrs if has? 'Control'
        hash[:seznam_firem] = seznam_firem.map(&:to_h_with_attrs) if has? 'SeznamFirem'
        hash[:seznam_km_karta] = seznam_km_karta.map(&:to_h_with_attrs) if has? 'SeznamKmKarta'
        hash[:seznam_zasoba] = seznam_zasoba.map(&:to_h_with_attrs) if has? 'SeznamZasoba'
        hash[:seznam_fakt_prij] = seznam_fakt_prij.map(&:to_h_with_attrs) if has? 'SeznamFaktPrij'
        hash[:seznam_fakt_vyd] = seznam_fakt_vyd.map(&:to_h_with_attrs) if has? 'SeznamFaktVyd'
        hash[:seznam_obj_prij] = seznam_obj_prij.map(&:to_h_with_attrs) if has? 'SeznamObjPrij'
        hash[:seznam_obj_vyd] = seznam_obj_vyd.map(&:to_h_with_attrs) if has? 'SeznamObjVyd'
        hash[:seznam_nab_prij] = seznam_nab_prij.map(&:to_h_with_attrs) if has? 'SeznamNabPrij'
        hash[:seznam_nab_vyd] = seznam_nab_vyd.map(&:to_h_with_attrs) if has? 'SeznamNabVyd'
        hash[:seznam_popt_prij] = seznam_popt_prij.map(&:to_h_with_attrs) if has? 'SeznamPoptPrij'
        hash[:seznam_popt_vyd] = seznam_popt_vyd.map(&:to_h_with_attrs) if has? 'SeznamPoptVyd'
        hash[:seznam_pok_dokl] = seznam_pok_dokl.map(&:to_h_with_attrs) if has? 'SeznamPokDokl'
        hash[:seznam_ban_dokl] = seznam_ban_dokl.map(&:to_h_with_attrs) if has? 'SeznamBanDokl'
        hash[:seznam_int_dokl] = seznam_int_dokl.map(&:to_h_with_attrs) if has? 'SeznamIntDokl'
        hash[:seznam_fakt_prij_dpp] = seznam_fakt_prij_dpp.map(&:to_h_with_attrs) if has? 'SeznamFaktPrij_DPP'
        hash[:seznam_fakt_vyd_dpp] = seznam_fakt_vyd_dpp.map(&:to_h_with_attrs) if has? 'SeznamFaktVyd_DPP'
        hash[:seznam_pohledavek] = seznam_pohledavek.map(&:to_h_with_attrs) if has? 'SeznamPohledavek'
        hash[:seznam_zavazku] = seznam_zavazku.map(&:to_h_with_attrs) if has? 'SeznamZavazku'
        hash[:seznam_prijemka] = seznam_prijemka.map(&:to_h_with_attrs) if has? 'SeznamPrijemka'
        hash[:seznam_vydejka] = seznam_vydejka.map(&:to_h_with_attrs) if has? 'SeznamVydejka'
        hash[:seznam_dl_prij] = seznam_dl_prij.map(&:to_h_with_attrs) if has? 'SeznamDLPrij'
        hash[:seznam_dl_vyd] = seznam_dl_vyd.map(&:to_h_with_attrs) if has? 'SeznamDLVyd'
        hash[:seznam_prodejka] = seznam_prodejka.map(&:to_h_with_attrs) if has? 'SeznamProdejka'
        hash[:seznam_prevodka] = seznam_prevodka.map(&:to_h_with_attrs) if has? 'SeznamPrevodka'
        hash[:seznam_vyrobka] = seznam_vyrobka.map(&:to_h_with_attrs) if has? 'SeznamVyrobka'
        hash[:seznam_inv_dokl] = seznam_inv_dokl.map(&:to_h_with_attrs) if has? 'SeznamInvDokl'
        hash[:seznam_stredisek] = seznam_stredisek.map(&:to_h_with_attrs) if has? 'SeznamStredisek'
        hash[:seznam_zakazka] = seznam_zakazka.map(&:to_h_with_attrs) if has? 'SeznamZakazka'
        hash[:seznam_cinnosti] = seznam_cinnosti.map(&:to_h_with_attrs) if has? 'SeznamCinnosti'
        hash[:seznam_clen_dph] = seznam_clen_dph.map(&:to_h_with_attrs) if has? 'SeznamClenDPH'
        hash[:seznam_uc_osnov] = seznam_uc_osnov.map(&:to_h_with_attrs) if has? 'SeznamUcOsnov'
        hash[:seznam_uc_pohybu] = seznam_uc_pohybu.map(&:to_h_with_attrs) if has? 'SeznamUcPohybu'
        hash[:seznam_predkontaci] = seznam_predkontaci.map(&:to_h_with_attrs) if has? 'SeznamPredkontaci'
        hash[:seznam_predkontaci_de] = seznam_predkontaci_de.map(&:to_h_with_attrs) if has? 'SeznamPredkontaciDE'
        hash[:seznam_zauctovani_dph] = seznam_zauctovani_dph.map(&:to_h_with_attrs) if has? 'SeznamZauctovaniDPH'
        hash[:seznam_zauctovani_dph_de] = seznam_zauctovani_dph_de.map(&:to_h_with_attrs) if has? 'SeznamZauctovaniDPH_DE'
        hash[:seznam_bank_uctu_pokladen] = seznam_bank_uctu_pokladen.map(&:to_h_with_attrs) if has? 'SeznamBankUctuPokladen'
        hash[:seznam_mezd] = seznam_mezd.map(&:to_h_with_attrs) if has? 'SeznamMezd'

        hash
        super.merge(hash)
      end
    end
  end
end