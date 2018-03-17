require 'money_s3/builders/base_builder'
require 'money_s3/builders/eet_type'
require 'money_s3/builders/valuty'
require 'money_s3/builders/sk_doklad_firma_type'
require 'money_s3/builders/konec_prij_firma_type'
require 'money_s3/builders/import'
require 'money_s3/builders/sklad_type'
require 'money_s3/builders/moje_firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/souhrn_dph_type'
require 'money_s3/builders/pol_skl_dokl_type'
require 'money_s3/builders/nep_platba_type'

module MoneyS3
  module Builders
    class Prevodka
      include BaseBuilder

      attr_accessor :cislo_dokla, :zpusob_uctovani, :c_objednavk, :kp_from_odb, :datum, :sleva, :d_rada, :stredisko, :zakazka, :cinnost, :popis, :vystavil, :vyriz_faktu, :text_pred_po, :text_za_pol, :nadpis, :zkrat_typu_d, :poriz_cena, :popis_x, :fiskal, :fis_doklad, :dat_sk_poh, :stat_moss, :sazba_dph1, :sazba_dph2, :prim_doklad, :var_symbol, :par_symbol, :typ_transakce, :dodaci_podm, :druh_dopravy, :st_odesl_urc, :doprav_tuz, :doprav_zahr, :datum_its, :sleva, :i_doklad_id, :i_dokl_agend, :celkem, :eet, :valuty, :dod_odb, :konec_prij, :import, :sklad_pro_pr, :moje_firma, :vlajky, :souhrn_dph, :polozka, :seznam_nep_plateb, :dokumenty

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('CisloDokla') << cislo_dokla) if cislo_dokla
        root << (Ox::Element.new('ZpusobUctovani') << zpusob_uctovani) if zpusob_uctovani
        root << (Ox::Element.new('CObjednavk') << c_objednavk) if c_objednavk
        root << (Ox::Element.new('KPFromOdb') << kp_from_odb) if kp_from_odb
        root << (Ox::Element.new('Datum') << datum) if datum
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('DRada') << d_rada) if d_rada
        root << (Ox::Element.new('Stredisko') << stredisko) if stredisko
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Vystavil') << vystavil) if vystavil
        root << (Ox::Element.new('VyrizFaktu') << vyriz_faktu) if vyriz_faktu
        root << (Ox::Element.new('TextPredPo') << text_pred_po) if text_pred_po
        root << (Ox::Element.new('TextZaPol') << text_za_pol) if text_za_pol
        root << (Ox::Element.new('Nadpis') << nadpis) if nadpis
        root << (Ox::Element.new('ZkratTypuD') << zkrat_typu_d) if zkrat_typu_d
        root << (Ox::Element.new('PorizCena') << poriz_cena) if poriz_cena
        root << (Ox::Element.new('PopisX') << popis_x) if popis_x
        root << (Ox::Element.new('Fiskal') << fiskal) if fiskal
        root << (Ox::Element.new('FisDoklad') << fis_doklad) if fis_doklad
        root << (Ox::Element.new('DatSkPoh') << dat_sk_poh) if dat_sk_poh
        root << (Ox::Element.new('StatMOSS') << stat_moss) if stat_moss
        root << (Ox::Element.new('SazbaDPH1') << sazba_dph1) if sazba_dph1
        root << (Ox::Element.new('SazbaDPH2') << sazba_dph2) if sazba_dph2
        root << (Ox::Element.new('PrimDoklad') << prim_doklad) if prim_doklad
        root << (Ox::Element.new('VarSymbol') << var_symbol) if var_symbol
        root << (Ox::Element.new('ParSymbol') << par_symbol) if par_symbol
        root << (Ox::Element.new('TypTransakce') << typ_transakce) if typ_transakce
        root << (Ox::Element.new('DodaciPodm') << dodaci_podm) if dodaci_podm
        root << (Ox::Element.new('DruhDopravy') << druh_dopravy) if druh_dopravy
        root << (Ox::Element.new('StOdeslUrc') << st_odesl_urc) if st_odesl_urc
        root << (Ox::Element.new('DopravTuz') << doprav_tuz) if doprav_tuz
        root << (Ox::Element.new('DopravZahr') << doprav_zahr) if doprav_zahr
        root << (Ox::Element.new('DatumITS') << datum_its) if datum_its
        root << (Ox::Element.new('Sleva') << sleva) if sleva
        root << (Ox::Element.new('iDokladID') << i_doklad_id) if i_doklad_id
        root << (Ox::Element.new('iDoklAgend') << i_dokl_agend) if i_dokl_agend
        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << EETType.new(eet, 'EET').builder if eet
        root << Valuty.new(valuty, 'Valuty').builder if valuty
        root << SkDokladFirmaType.new(dod_odb, 'DodOdb').builder if dod_odb
        root << KonecPrijFirmaType.new(konec_prij, 'KonecPrij').builder if konec_prij
        root << Import.new(import, 'Import').builder if import
        root << SkladType.new(sklad_pro_pr, 'SkladProPr').builder if sklad_pro_pr
        root << MojeFirmaType.new(moje_firma, 'MojeFirma').builder if moje_firma
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky
        root << SouhrnDPHType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph

        if polozka
          polozka.each { |i| root << PolSklDoklType.new(i, 'Polozka').builder }
        end

        if seznam_nep_plateb
          element = Ox::Element.new('SeznamNepPlateb')
          seznam_nep_plateb.each { |i| element << NepPlatbaType.new(i, 'NepPlatba').builder }
          root << element
        end

        if dokumenty
          element = Ox::Element.new('Dokumenty')
          dokumenty.map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end