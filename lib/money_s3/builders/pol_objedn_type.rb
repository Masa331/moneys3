require 'money_s3/builders/base_builder'
require 'money_s3/builders/souhrn_dph_pol_type'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/neskl_polozka'
require 'money_s3/builders/vyrobni_cislo_type'
require 'money_s3/builders/sub_pol_obj_type'

module MoneyS3
  module Builders
    class PolObjednType
      include BaseBuilder

      attr_accessor :popis, :poznamka, :pocet_mj, :zbyva_mj, :cena, :sazba_dph, :typ_ceny, :sleva, :vystaveno, :vyridit_nej, :vyridit_do, :vyrizeno, :poradi, :stredisko, :zakazka, :cinnost, :cenova_hlad, :valuty, :kod_statu_puv, :typ_transakce, :hmotnost, :cena_po_sleve, :zvl_rezim, :zvl_dph, :rezim_eet, :pred_pc, :souhrn_dph, :sklad, :km_karta, :neskl_polozka, :seznam_vc, :slozeni

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('PocetMJ') << pocet_mj) if pocet_mj
        root << (Ox::Element.new('ZbyvaMJ') << zbyva_mj) if zbyva_mj
        root << (Ox::Element.new('Cena') << cena) if cena
        root << (Ox::Element.new('SazbaDPH') << sazba_dph) if sazba_dph
        root << (Ox::Element.new('TypCeny') << typ_ceny) if typ_ceny
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('Vystaveno') << vystaveno) if vystaveno
        root << (Ox::Element.new('VyriditNej') << vyridit_nej) if vyridit_nej
        root << (Ox::Element.new('Vyridit_do') << vyridit_do) if vyridit_do
        root << (Ox::Element.new('Vyrizeno') << vyrizeno) if vyrizeno
        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('CenovaHlad') << cenova_hlad) if cenova_hlad
        root << (Ox::Element.new('Valuty') << valuty) if valuty
        root << (Ox::Element.new('KodStatuPuv') << kod_statu_puv) if kod_statu_puv
        root << (Ox::Element.new('TypTransakce') << typ_transakce) if typ_transakce
        root << (Ox::Element.new('Hmotnost') << hmotnost) if hmotnost
        root << (Ox::Element.new('CenaPoSleve') << cena_po_sleve) if cena_po_sleve
        root << (Ox::Element.new('ZvlRezim') << zvl_rezim) if zvl_rezim
        root << (Ox::Element.new('ZvlDPH') << zvl_dph) if zvl_dph
        root << (Ox::Element.new('RezimEET') << rezim_eet) if rezim_eet
        root << (Ox::Element.new('PredPC') << pred_pc) if pred_pc
        root << SouhrnDPHPolType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph
        root << SkladType.new(sklad, 'Sklad').builder if sklad
        root << KmKartaType.new(km_karta, 'KmKarta').builder if km_karta
        root << NesklPolozka.new(neskl_polozka, 'NesklPolozka').builder if neskl_polozka

        if seznam_vc
          element = Ox::Element.new('SeznamVC')
          seznam_vc.each { |i| element << VyrobniCisloType.new(i, 'VyrobniCislo').builder }
          root << element
        end

        if slozeni
          element = Ox::Element.new('Slozeni')
          slozeni.each { |i| element << SubPolObjType.new(i, 'SubPolozka').builder }
          root << element
        end

        root
      end
    end
  end
end