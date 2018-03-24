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

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :seznam_cinnosti
          root << SeznamCinnosti.new(attributes[:seznam_cinnosti], 'SeznamCinnosti').builder
        end

        if attributes.key? :seznam_stredisek
          root << SeznamStredisek.new(attributes[:seznam_stredisek], 'SeznamStredisek').builder
        end

        if attributes.key? :seznam_clen_dph
          root << SeznamClenDPH.new(attributes[:seznam_clen_dph], 'SeznamClenDPH').builder
        end

        if attributes.key? :seznam_uc_osnov
          root << SeznamUcOsnov.new(attributes[:seznam_uc_osnov], 'SeznamUcOsnov').builder
        end

        if attributes.key? :seznam_predkontaci
          root << SeznamPredkontaci.new(attributes[:seznam_predkontaci], 'SeznamPredkontaci').builder
        end

        if attributes.key? :seznam_predkontaci_de
          root << SeznamPredkontaciDE.new(attributes[:seznam_predkontaci_de], 'SeznamPredkontaciDE').builder
        end

        if attributes.key? :seznam_kurz_listku
          root << SeznamKurzListku.new(attributes[:seznam_kurz_listku], 'SeznamKurzListku').builder
        end

        if attributes.key? :seznam_cen_hladin
          root << SeznamCenHladin.new(attributes[:seznam_cen_hladin], 'SeznamCenHladin').builder
        end

        if attributes.key? :seznam_firem
          root << SeznamFirem.new(attributes[:seznam_firem], 'SeznamFirem').builder
        end

        if attributes.key? :seznam_km_karta
          root << SeznamKmKarta.new(attributes[:seznam_km_karta], 'SeznamKmKarta').builder
        end

        if attributes.key? :seznam_zasoba
          root << SeznamZasoba.new(attributes[:seznam_zasoba], 'SeznamZasoba').builder
        end

        if attributes.key? :seznam_skladu
          root << SeznamSkladu.new(attributes[:seznam_skladu], 'SeznamSkladu').builder
        end

        if attributes.key? :seznam_typ_kusovnik
          root << SeznamTypKusovnik.new(attributes[:seznam_typ_kusovnik], 'SeznamTypKusovnik').builder
        end

        if attributes.key? :seznam_zak_kusovnik
          root << SeznamZakKusovnik.new(attributes[:seznam_zak_kusovnik], 'SeznamZakKusovnik').builder
        end

        if attributes.key? :seznam_zamestnancu
          root << SeznamZamestnancu.new(attributes[:seznam_zamestnancu], 'SeznamZamestnancu').builder
        end

        if attributes.key? :seznam_zakazka
          root << SeznamZakazka.new(attributes[:seznam_zakazka], 'SeznamZakazka').builder
        end

        if attributes.key? :seznam_fakt_prij
          root << SeznamFaktPrij.new(attributes[:seznam_fakt_prij], 'SeznamFaktPrij').builder
        end

        if attributes.key? :seznam_fakt_vyd
          root << SeznamFaktVyd.new(attributes[:seznam_fakt_vyd], 'SeznamFaktVyd').builder
        end

        if attributes.key? :seznam_int_dokl
          root << SeznamIntDokl.new(attributes[:seznam_int_dokl], 'SeznamIntDokl').builder
        end

        if attributes.key? :seznam_pok_dokl
          root << SeznamPokDokl.new(attributes[:seznam_pok_dokl], 'SeznamPokDokl').builder
        end

        if attributes.key? :seznam_bank_dokl
          root << SeznamBankDokl.new(attributes[:seznam_bank_dokl], 'SeznamBankDokl').builder
        end

        if attributes.key? :seznam_obj_prij
          root << SeznamObjPrij.new(attributes[:seznam_obj_prij], 'SeznamObjPrij').builder
        end

        if attributes.key? :seznam_obj_vyd
          root << SeznamObjVyd.new(attributes[:seznam_obj_vyd], 'SeznamObjVyd').builder
        end

        if attributes.key? :seznam_nab_prij
          root << SeznamNabPrij.new(attributes[:seznam_nab_prij], 'SeznamNabPrij').builder
        end

        if attributes.key? :seznam_nab_vyd
          root << SeznamNabVyd.new(attributes[:seznam_nab_vyd], 'SeznamNabVyd').builder
        end

        if attributes.key? :seznam_popt_prij
          root << SeznamPoptPrij.new(attributes[:seznam_popt_prij], 'SeznamPoptPrij').builder
        end

        if attributes.key? :seznam_popt_vyd
          root << SeznamPoptVyd.new(attributes[:seznam_popt_vyd], 'SeznamPoptVyd').builder
        end

        if attributes.key? :seznam_prijemka
          root << SeznamPrijemka.new(attributes[:seznam_prijemka], 'SeznamPrijemka').builder
        end

        if attributes.key? :seznam_vydejka
          root << SeznamVydejka.new(attributes[:seznam_vydejka], 'SeznamVydejka').builder
        end

        if attributes.key? :seznam_dl_prij
          root << SeznamDLPrij.new(attributes[:seznam_dl_prij], 'SeznamDLPrij').builder
        end

        if attributes.key? :seznam_dl_vyd
          root << SeznamDLVyd.new(attributes[:seznam_dl_vyd], 'SeznamDLVyd').builder
        end

        if attributes.key? :seznam_prodejka
          root << SeznamProdejka.new(attributes[:seznam_prodejka], 'SeznamProdejka').builder
        end

        if attributes.key? :seznam_prevodka
          root << SeznamPrevodka.new(attributes[:seznam_prevodka], 'SeznamPrevodka').builder
        end

        if attributes.key? :seznam_vyrobka
          root << SeznamVyrobka.new(attributes[:seznam_vyrobka], 'SeznamVyrobka').builder
        end

        if attributes.key? :seznam_inv_dokl
          root << SeznamInvDokl.new(attributes[:seznam_inv_dokl], 'SeznamInvDokl').builder
        end

        if attributes.key? :seznam_mezd
          root << SeznamMezd.new(attributes[:seznam_mezd], 'SeznamMezd').builder
        end

        if attributes.key? :seznam_uc_pohybu
          element = Ox::Element.new('SeznamUcPohybu')
          attributes[:seznam_uc_pohybu].each { |i| element << UcPohybType.new(i, 'UcPohyb').builder }
          root << element
        end

        if attributes.key? :seznam_zauctovani_dph
          element = Ox::Element.new('SeznamZauctovaniDPH')
          attributes[:seznam_zauctovani_dph].each { |i| element << ZauctovaniDPHType.new(i, 'ZauctovaniDPH').builder }
          root << element
        end

        if attributes.key? :seznam_zauctovani_dph_de
          element = Ox::Element.new('SeznamZauctovaniDPH_DE')
          attributes[:seznam_zauctovani_dph_de].each { |i| element << ZauctovaniDPHDetype.new(i, 'ZauctovaniDPH_DE').builder }
          root << element
        end

        if attributes.key? :seznam_parametru
          element = Ox::Element.new('SeznamParametru')
          attributes[:seznam_parametru].each { |i| element << ParametrType.new(i, 'Parametr').builder }
          root << element
        end

        if attributes.key? :seznam_kategorii
          element = Ox::Element.new('SeznamKategorii')
          attributes[:seznam_kategorii].each { |i| element << EkategorieType.new(i, 'eKategorie').builder }
          root << element
        end

        if attributes.key? :seznam_bank_uctu_pokladen
          element = Ox::Element.new('SeznamBankUctuPokladen')
          attributes[:seznam_bank_uctu_pokladen].each { |i| element << BankUcetPokladnaType.new(i, 'BankUcetPokladna').builder }
          root << element
        end

        if attributes.key? :seznam_typu_priplatku
          element = Ox::Element.new('SeznamTypuPriplatku')
          attributes[:seznam_typu_priplatku].each { |i| element << TypPriplatkuType.new(i, 'TypPriplatku').builder }
          root << element
        end

        if attributes.key? :seznam_pohledavek
          element = Ox::Element.new('SeznamPohledavek')
          attributes[:seznam_pohledavek].each { |i| element << PohledavkaType.new(i, 'Pohledavka').builder }
          root << element
        end

        if attributes.key? :seznam_zavazku
          element = Ox::Element.new('SeznamZavazku')
          attributes[:seznam_zavazku].each { |i| element << ZavazekType.new(i, 'Zavazek').builder }
          root << element
        end

        if attributes.key? :seznam_fakt_prij_dpp
          element = Ox::Element.new('SeznamFaktPrij_DPP')
          attributes[:seznam_fakt_prij_dpp].each { |i| element << FakturaType.new(i, 'FaktPrij_DPP').builder }
          root << element
        end

        if attributes.key? :seznam_fakt_vyd_dpp
          element = Ox::Element.new('SeznamFaktVyd_DPP')
          attributes[:seznam_fakt_vyd_dpp].each { |i| element << FakturaType.new(i, 'FaktVyd_DPP').builder }
          root << element
        end

        root
      end
    end
  end
end