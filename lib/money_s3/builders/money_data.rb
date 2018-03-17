require 'money_s3/builders/base_builder'
require 'money_s3/builders/seznam_cinnosti'
require 'money_s3/builders/seznam_stredisek'
require 'money_s3/builders/seznam_clen_dph'
require 'money_s3/builders/seznam_uc_osnov'
require 'money_s3/builders/seznam_predkontaci'
require 'money_s3/builders/seznam_predkontaci_de'
require 'money_s3/builders/seznam_kurz_listku'
require 'money_s3/builders/seznam_cen_hladin'
require 'money_s3/builders/seznam_firem'
require 'money_s3/builders/seznam_km_karta'
require 'money_s3/builders/seznam_zasoba'
require 'money_s3/builders/seznam_skladu'
require 'money_s3/builders/seznam_typ_kusovnik'
require 'money_s3/builders/seznam_zak_kusovnik'
require 'money_s3/builders/seznam_zamestnancu'
require 'money_s3/builders/seznam_zakazka'
require 'money_s3/builders/seznam_fakt_prij'
require 'money_s3/builders/seznam_fakt_vyd'
require 'money_s3/builders/seznam_int_dokl'
require 'money_s3/builders/seznam_pok_dokl'
require 'money_s3/builders/seznam_bank_dokl'
require 'money_s3/builders/seznam_obj_prij'
require 'money_s3/builders/seznam_obj_vyd'
require 'money_s3/builders/seznam_nab_prij'
require 'money_s3/builders/seznam_nab_vyd'
require 'money_s3/builders/seznam_popt_prij'
require 'money_s3/builders/seznam_popt_vyd'
require 'money_s3/builders/seznam_prijemka'
require 'money_s3/builders/seznam_vydejka'
require 'money_s3/builders/seznam_dl_prij'
require 'money_s3/builders/seznam_dl_vyd'
require 'money_s3/builders/seznam_prodejka'
require 'money_s3/builders/seznam_prevodka'
require 'money_s3/builders/seznam_vyrobka'
require 'money_s3/builders/seznam_inv_dokl'
require 'money_s3/builders/seznam_mezd'
require 'money_s3/builders/uc_pohyb_type'
require 'money_s3/builders/zauctovani_dph_type'
require 'money_s3/builders/zauctovani_dph_detype'
require 'money_s3/builders/parametr_type'
require 'money_s3/builders/ekategorie_type'
require 'money_s3/builders/bank_ucet_pokladna_type'
require 'money_s3/builders/typ_priplatku_type'
require 'money_s3/builders/pohledavka_type'
require 'money_s3/builders/zavazek_type'
require 'money_s3/builders/faktura_type'
require 'money_s3/builders/faktura_type'

module MoneyS3
  module Builders
    class MoneyData
      include BaseBuilder

      attr_accessor :seznam_cinnosti, :seznam_stredisek, :seznam_clen_dph, :seznam_uc_osnov, :seznam_predkontaci, :seznam_predkontaci_de, :seznam_kurz_listku, :seznam_cen_hladin, :seznam_firem, :seznam_km_karta, :seznam_zasoba, :seznam_skladu, :seznam_typ_kusovnik, :seznam_zak_kusovnik, :seznam_zamestnancu, :seznam_zakazka, :seznam_fakt_prij, :seznam_fakt_vyd, :seznam_int_dokl, :seznam_pok_dokl, :seznam_bank_dokl, :seznam_obj_prij, :seznam_obj_vyd, :seznam_nab_prij, :seznam_nab_vyd, :seznam_popt_prij, :seznam_popt_vyd, :seznam_prijemka, :seznam_vydejka, :seznam_dl_prij, :seznam_dl_vyd, :seznam_prodejka, :seznam_prevodka, :seznam_vyrobka, :seznam_inv_dokl, :seznam_mezd, :seznam_uc_pohybu, :seznam_zauctovani_dph, :seznam_zauctovani_dph_de, :seznam_parametru, :seznam_kategorii, :seznam_bank_uctu_pokladen, :seznam_typu_priplatku, :seznam_pohledavek, :seznam_zavazku, :seznam_fakt_prij_dpp, :seznam_fakt_vyd_dpp

      def builder
        root = Ox::Element.new(element_name)

        root << SeznamCinnosti.new(seznam_cinnosti, 'SeznamCinnosti').builder if seznam_cinnosti
        root << SeznamStredisek.new(seznam_stredisek, 'SeznamStredisek').builder if seznam_stredisek
        root << SeznamClenDPH.new(seznam_clen_dph, 'SeznamClenDPH').builder if seznam_clen_dph
        root << SeznamUcOsnov.new(seznam_uc_osnov, 'SeznamUcOsnov').builder if seznam_uc_osnov
        root << SeznamPredkontaci.new(seznam_predkontaci, 'SeznamPredkontaci').builder if seznam_predkontaci
        root << SeznamPredkontaciDE.new(seznam_predkontaci_de, 'SeznamPredkontaciDE').builder if seznam_predkontaci_de
        root << SeznamKurzListku.new(seznam_kurz_listku, 'SeznamKurzListku').builder if seznam_kurz_listku
        root << SeznamCenHladin.new(seznam_cen_hladin, 'SeznamCenHladin').builder if seznam_cen_hladin
        root << SeznamFirem.new(seznam_firem, 'SeznamFirem').builder if seznam_firem
        root << SeznamKmKarta.new(seznam_km_karta, 'SeznamKmKarta').builder if seznam_km_karta
        root << SeznamZasoba.new(seznam_zasoba, 'SeznamZasoba').builder if seznam_zasoba
        root << SeznamSkladu.new(seznam_skladu, 'SeznamSkladu').builder if seznam_skladu
        root << SeznamTypKusovnik.new(seznam_typ_kusovnik, 'SeznamTypKusovnik').builder if seznam_typ_kusovnik
        root << SeznamZakKusovnik.new(seznam_zak_kusovnik, 'SeznamZakKusovnik').builder if seznam_zak_kusovnik
        root << SeznamZamestnancu.new(seznam_zamestnancu, 'SeznamZamestnancu').builder if seznam_zamestnancu
        root << SeznamZakazka.new(seznam_zakazka, 'SeznamZakazka').builder if seznam_zakazka
        root << SeznamFaktPrij.new(seznam_fakt_prij, 'SeznamFaktPrij').builder if seznam_fakt_prij
        root << SeznamFaktVyd.new(seznam_fakt_vyd, 'SeznamFaktVyd').builder if seznam_fakt_vyd
        root << SeznamIntDokl.new(seznam_int_dokl, 'SeznamIntDokl').builder if seznam_int_dokl
        root << SeznamPokDokl.new(seznam_pok_dokl, 'SeznamPokDokl').builder if seznam_pok_dokl
        root << SeznamBankDokl.new(seznam_bank_dokl, 'SeznamBankDokl').builder if seznam_bank_dokl
        root << SeznamObjPrij.new(seznam_obj_prij, 'SeznamObjPrij').builder if seznam_obj_prij
        root << SeznamObjVyd.new(seznam_obj_vyd, 'SeznamObjVyd').builder if seznam_obj_vyd
        root << SeznamNabPrij.new(seznam_nab_prij, 'SeznamNabPrij').builder if seznam_nab_prij
        root << SeznamNabVyd.new(seznam_nab_vyd, 'SeznamNabVyd').builder if seznam_nab_vyd
        root << SeznamPoptPrij.new(seznam_popt_prij, 'SeznamPoptPrij').builder if seznam_popt_prij
        root << SeznamPoptVyd.new(seznam_popt_vyd, 'SeznamPoptVyd').builder if seznam_popt_vyd
        root << SeznamPrijemka.new(seznam_prijemka, 'SeznamPrijemka').builder if seznam_prijemka
        root << SeznamVydejka.new(seznam_vydejka, 'SeznamVydejka').builder if seznam_vydejka
        root << SeznamDLPrij.new(seznam_dl_prij, 'SeznamDLPrij').builder if seznam_dl_prij
        root << SeznamDLVyd.new(seznam_dl_vyd, 'SeznamDLVyd').builder if seznam_dl_vyd
        root << SeznamProdejka.new(seznam_prodejka, 'SeznamProdejka').builder if seznam_prodejka
        root << SeznamPrevodka.new(seznam_prevodka, 'SeznamPrevodka').builder if seznam_prevodka
        root << SeznamVyrobka.new(seznam_vyrobka, 'SeznamVyrobka').builder if seznam_vyrobka
        root << SeznamInvDokl.new(seznam_inv_dokl, 'SeznamInvDokl').builder if seznam_inv_dokl
        root << SeznamMezd.new(seznam_mezd, 'SeznamMezd').builder if seznam_mezd

        if seznam_uc_pohybu
          element = Ox::Element.new('SeznamUcPohybu')
          seznam_uc_pohybu.each { |i| element << UcPohybType.new(i, 'UcPohyb').builder }
          root << element
        end

        if seznam_zauctovani_dph
          element = Ox::Element.new('SeznamZauctovaniDPH')
          seznam_zauctovani_dph.each { |i| element << ZauctovaniDPHType.new(i, 'ZauctovaniDPH').builder }
          root << element
        end

        if seznam_zauctovani_dph_de
          element = Ox::Element.new('SeznamZauctovaniDPH_DE')
          seznam_zauctovani_dph_de.each { |i| element << ZauctovaniDPHDetype.new(i, 'ZauctovaniDPH_DE').builder }
          root << element
        end

        if seznam_parametru
          element = Ox::Element.new('SeznamParametru')
          seznam_parametru.each { |i| element << ParametrType.new(i, 'Parametr').builder }
          root << element
        end

        if seznam_kategorii
          element = Ox::Element.new('SeznamKategorii')
          seznam_kategorii.each { |i| element << EkategorieType.new(i, 'eKategorie').builder }
          root << element
        end

        if seznam_bank_uctu_pokladen
          element = Ox::Element.new('SeznamBankUctuPokladen')
          seznam_bank_uctu_pokladen.each { |i| element << BankUcetPokladnaType.new(i, 'BankUcetPokladna').builder }
          root << element
        end

        if seznam_typu_priplatku
          element = Ox::Element.new('SeznamTypuPriplatku')
          seznam_typu_priplatku.each { |i| element << TypPriplatkuType.new(i, 'TypPriplatku').builder }
          root << element
        end

        if seznam_pohledavek
          element = Ox::Element.new('SeznamPohledavek')
          seznam_pohledavek.each { |i| element << PohledavkaType.new(i, 'Pohledavka').builder }
          root << element
        end

        if seznam_zavazku
          element = Ox::Element.new('SeznamZavazku')
          seznam_zavazku.each { |i| element << ZavazekType.new(i, 'Zavazek').builder }
          root << element
        end

        if seznam_fakt_prij_dpp
          element = Ox::Element.new('SeznamFaktPrij_DPP')
          seznam_fakt_prij_dpp.each { |i| element << FakturaType.new(i, 'FaktPrij_DPP').builder }
          root << element
        end

        if seznam_fakt_vyd_dpp
          element = Ox::Element.new('SeznamFaktVyd_DPP')
          seznam_fakt_vyd_dpp.each { |i| element << FakturaType.new(i, 'FaktVyd_DPP').builder }
          root << element
        end

        root
      end
    end
  end
end