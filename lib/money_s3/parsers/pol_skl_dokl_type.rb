module MoneyS3
  module Parsers
    class PolSklDoklType
      include ParserCore::BaseParser

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def pocet_mj
        at 'PocetMJ'
      end

      def pocet_mj_attributes
        attributes_at 'PocetMJ'
      end

      def cena
        at 'Cena'
      end

      def cena_attributes
        attributes_at 'Cena'
      end

      def valuty
        at 'Valuty'
      end

      def valuty_attributes
        attributes_at 'Valuty'
      end

      def dph
        at 'DPH'
      end

      def dph_attributes
        attributes_at 'DPH'
      end

      def cena_typ
        at 'CenaTyp'
      end

      def cena_typ_attributes
        attributes_at 'CenaTyp'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def stredisko
        at 'Stredisko'
      end

      def stredisko_attributes
        attributes_at 'Stredisko'
      end

      def cenova_hlad
        at 'CenovaHlad'
      end

      def cenova_hlad_attributes
        attributes_at 'CenovaHlad'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def vratka
        at 'Vratka'
      end

      def vratka_attributes
        attributes_at 'Vratka'
      end

      def ucet_md
        at 'UcetMD'
      end

      def ucet_md_attributes
        attributes_at 'UcetMD'
      end

      def ucet_d
        at 'UcetD'
      end

      def ucet_d_attributes
        attributes_at 'UcetD'
      end

      def kod_statu_puv
        at 'KodStatuPuv'
      end

      def kod_statu_puv_attributes
        attributes_at 'KodStatuPuv'
      end

      def typ_transakce
        at 'TypTransakce'
      end

      def typ_transakce_attributes
        attributes_at 'TypTransakce'
      end

      def hmotnost
        at 'Hmotnost'
      end

      def hmotnost_attributes
        attributes_at 'Hmotnost'
      end

      def poriz_cena
        at 'PorizCena'
      end

      def poriz_cena_attributes
        attributes_at 'PorizCena'
      end

      def zvl_rezim
        at 'ZvlRezim'
      end

      def zvl_rezim_attributes
        attributes_at 'ZvlRezim'
      end

      def zvl_dph
        at 'ZvlDPH'
      end

      def zvl_dph_attributes
        attributes_at 'ZvlDPH'
      end

      def rezim_eet
        at 'RezimEET'
      end

      def rezim_eet_attributes
        attributes_at 'RezimEET'
      end

      def cena_po_sleve
        at 'CenaPoSleve'
      end

      def cena_po_sleve_attributes
        attributes_at 'CenaPoSleve'
      end

      def seznam_vc
        array_of_at(VyrobniCisloType, ['SeznamVC', 'VyrobniCislo'])
      end

      def seznam_dodavek
        array_of_at(DodavkaType, ['SeznamDodavek', 'Dodavka'])
      end

      def sklad
        submodel_at(SkladType, 'Sklad')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def slozeni
        array_of_at(DefSubPolType, ['Slozeni', 'SubPolozka'])
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

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:pocet_mj] = pocet_mj if has? 'PocetMJ'
        hash[:pocet_mj_attributes] = pocet_mj_attributes if has? 'PocetMJ'
        hash[:cena] = cena if has? 'Cena'
        hash[:cena_attributes] = cena_attributes if has? 'Cena'
        hash[:valuty] = valuty if has? 'Valuty'
        hash[:valuty_attributes] = valuty_attributes if has? 'Valuty'
        hash[:dph] = dph if has? 'DPH'
        hash[:dph_attributes] = dph_attributes if has? 'DPH'
        hash[:cena_typ] = cena_typ if has? 'CenaTyp'
        hash[:cena_typ_attributes] = cena_typ_attributes if has? 'CenaTyp'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:stredisko] = stredisko if has? 'Stredisko'
        hash[:stredisko_attributes] = stredisko_attributes if has? 'Stredisko'
        hash[:cenova_hlad] = cenova_hlad if has? 'CenovaHlad'
        hash[:cenova_hlad_attributes] = cenova_hlad_attributes if has? 'CenovaHlad'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:vratka] = vratka if has? 'Vratka'
        hash[:vratka_attributes] = vratka_attributes if has? 'Vratka'
        hash[:ucet_md] = ucet_md if has? 'UcetMD'
        hash[:ucet_md_attributes] = ucet_md_attributes if has? 'UcetMD'
        hash[:ucet_d] = ucet_d if has? 'UcetD'
        hash[:ucet_d_attributes] = ucet_d_attributes if has? 'UcetD'
        hash[:kod_statu_puv] = kod_statu_puv if has? 'KodStatuPuv'
        hash[:kod_statu_puv_attributes] = kod_statu_puv_attributes if has? 'KodStatuPuv'
        hash[:typ_transakce] = typ_transakce if has? 'TypTransakce'
        hash[:typ_transakce_attributes] = typ_transakce_attributes if has? 'TypTransakce'
        hash[:hmotnost] = hmotnost if has? 'Hmotnost'
        hash[:hmotnost_attributes] = hmotnost_attributes if has? 'Hmotnost'
        hash[:poriz_cena] = poriz_cena if has? 'PorizCena'
        hash[:poriz_cena_attributes] = poriz_cena_attributes if has? 'PorizCena'
        hash[:zvl_rezim] = zvl_rezim if has? 'ZvlRezim'
        hash[:zvl_rezim_attributes] = zvl_rezim_attributes if has? 'ZvlRezim'
        hash[:zvl_dph] = zvl_dph if has? 'ZvlDPH'
        hash[:zvl_dph_attributes] = zvl_dph_attributes if has? 'ZvlDPH'
        hash[:rezim_eet] = rezim_eet if has? 'RezimEET'
        hash[:rezim_eet_attributes] = rezim_eet_attributes if has? 'RezimEET'
        hash[:cena_po_sleve] = cena_po_sleve if has? 'CenaPoSleve'
        hash[:cena_po_sleve_attributes] = cena_po_sleve_attributes if has? 'CenaPoSleve'
        hash[:seznam_vc] = seznam_vc.map(&:to_h) if has? 'SeznamVC'
        hash[:seznam_dodavek] = seznam_dodavek.map(&:to_h) if has? 'SeznamDodavek'
        hash[:sklad] = sklad.to_h if has? 'Sklad'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'
        hash[:slozeni] = slozeni.map(&:to_h) if has? 'Slozeni'
        hash[:uzivatelska_pole] = uzivatelska_pole if has? 'UzivatelskaPole'
        hash[:uzivatelska_pole_attributes] = uzivatelska_pole_attributes if has? 'UzivatelskaPole'

        hash
      end
    end
  end
end