module MoneyS3
  module Builders
    class MoneyData
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :seznam_cinnosti
          root << SeznamCinnosti.new('SeznamCinnosti', data[:seznam_cinnosti]).builder
        end
        if data.key? :seznam_stredisek
          root << SeznamStredisek.new('SeznamStredisek', data[:seznam_stredisek]).builder
        end
        if data.key? :seznam_clen_dph
          root << SeznamClenDPH.new('SeznamClenDPH', data[:seznam_clen_dph]).builder
        end
        if data.key? :seznam_uc_osnov
          root << SeznamUcOsnov.new('SeznamUcOsnov', data[:seznam_uc_osnov]).builder
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
          root << SeznamPredkontaci.new('SeznamPredkontaci', data[:seznam_predkontaci]).builder
        end
        if data.key? :seznam_predkontaci_de
          root << SeznamPredkontaciDE.new('SeznamPredkontaciDE', data[:seznam_predkontaci_de]).builder
        end
        if data.key? :seznam_kurz_listku
          root << SeznamKurzListku.new('SeznamKurzListku', data[:seznam_kurz_listku]).builder
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
          root << SeznamCenHladin.new('SeznamCenHladin', data[:seznam_cen_hladin]).builder
        end
        if data.key? :seznam_firem
          root << SeznamFirem.new('SeznamFirem', data[:seznam_firem]).builder
        end
        if data.key? :seznam_km_karta
          root << SeznamKmKarta.new('SeznamKmKarta', data[:seznam_km_karta]).builder
        end
        if data.key? :seznam_zasoba
          root << SeznamZasoba.new('SeznamZasoba', data[:seznam_zasoba]).builder
        end
        if data.key? :seznam_skladu
          root << SeznamSkladu.new('SeznamSkladu', data[:seznam_skladu]).builder
        end
        if data.key? :seznam_typ_kusovnik
          root << SeznamTypKusovnik.new('SeznamTypKusovnik', data[:seznam_typ_kusovnik]).builder
        end
        if data.key? :seznam_zak_kusovnik
          root << SeznamZakKusovnik.new('SeznamZakKusovnik', data[:seznam_zak_kusovnik]).builder
        end
        if data.key? :seznam_zamestnancu
          root << SeznamZamestnancu.new('SeznamZamestnancu', data[:seznam_zamestnancu]).builder
        end
        if data.key? :seznam_zakazka
          root << SeznamZakazka.new('SeznamZakazka', data[:seznam_zakazka]).builder
        end
        if data.key? :seznam_fakt_prij
          root << SeznamFaktPrij.new('SeznamFaktPrij', data[:seznam_fakt_prij]).builder
        end
        if data.key? :seznam_fakt_vyd
          root << SeznamFaktVyd.new('SeznamFaktVyd', data[:seznam_fakt_vyd]).builder
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
          root << SeznamIntDokl.new('SeznamIntDokl', data[:seznam_int_dokl]).builder
        end
        if data.key? :seznam_pok_dokl
          root << SeznamPokDokl.new('SeznamPokDokl', data[:seznam_pok_dokl]).builder
        end
        if data.key? :seznam_bank_dokl
          root << SeznamBankDokl.new('SeznamBankDokl', data[:seznam_bank_dokl]).builder
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
          root << SeznamObjPrij.new('SeznamObjPrij', data[:seznam_obj_prij]).builder
        end
        if data.key? :seznam_obj_vyd
          root << SeznamObjVyd.new('SeznamObjVyd', data[:seznam_obj_vyd]).builder
        end
        if data.key? :seznam_nab_prij
          root << SeznamNabPrij.new('SeznamNabPrij', data[:seznam_nab_prij]).builder
        end
        if data.key? :seznam_nab_vyd
          root << SeznamNabVyd.new('SeznamNabVyd', data[:seznam_nab_vyd]).builder
        end
        if data.key? :seznam_popt_prij
          root << SeznamPoptPrij.new('SeznamPoptPrij', data[:seznam_popt_prij]).builder
        end
        if data.key? :seznam_popt_vyd
          root << SeznamPoptVyd.new('SeznamPoptVyd', data[:seznam_popt_vyd]).builder
        end
        if data.key? :seznam_prijemka
          root << SeznamPrijemka.new('SeznamPrijemka', data[:seznam_prijemka]).builder
        end
        if data.key? :seznam_vydejka
          root << SeznamVydejka.new('SeznamVydejka', data[:seznam_vydejka]).builder
        end
        if data.key? :seznam_dl_prij
          root << SeznamDLPrij.new('SeznamDLPrij', data[:seznam_dl_prij]).builder
        end
        if data.key? :seznam_dl_vyd
          root << SeznamDLVyd.new('SeznamDLVyd', data[:seznam_dl_vyd]).builder
        end
        if data.key? :seznam_prodejka
          root << SeznamProdejka.new('SeznamProdejka', data[:seznam_prodejka]).builder
        end
        if data.key? :seznam_prevodka
          root << SeznamPrevodka.new('SeznamPrevodka', data[:seznam_prevodka]).builder
        end
        if data.key? :seznam_vyrobka
          root << SeznamVyrobka.new('SeznamVyrobka', data[:seznam_vyrobka]).builder
        end
        if data.key? :seznam_inv_dokl
          root << SeznamInvDokl.new('SeznamInvDokl', data[:seznam_inv_dokl]).builder
        end
        if data.key? :seznam_mezd
          root << SeznamMezd.new('SeznamMezd', data[:seznam_mezd]).builder
        end

        root
      end
    end
  end
end