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
    class Prodejka
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('CisloDokla', data[:cislo_dokla]) if data.key? :cislo_dokla
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani]) if data.key? :zpusob_uctovani
        root << build_element('CObjednavk', data[:c_objednavk]) if data.key? :c_objednavk
        root << build_element('KPFromOdb', data[:kp_from_odb]) if data.key? :kp_from_odb
        root << build_element('Datum', data[:datum]) if data.key? :datum
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('DRada', data[:d_rada]) if data.key? :d_rada
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Vystavil', data[:vystavil]) if data.key? :vystavil
        root << build_element('VyrizFaktu', data[:vyriz_faktu]) if data.key? :vyriz_faktu
        root << build_element('TextPredPo', data[:text_pred_po]) if data.key? :text_pred_po
        root << build_element('TextZaPol', data[:text_za_pol]) if data.key? :text_za_pol
        root << build_element('Nadpis', data[:nadpis]) if data.key? :nadpis
        root << build_element('ZkratTypuD', data[:zkrat_typu_d]) if data.key? :zkrat_typu_d
        root << build_element('PorizCena', data[:poriz_cena]) if data.key? :poriz_cena
        root << build_element('PopisX', data[:popis_x]) if data.key? :popis_x
        root << build_element('Fiskal', data[:fiskal]) if data.key? :fiskal
        root << build_element('FisDoklad', data[:fis_doklad]) if data.key? :fis_doklad
        root << build_element('DatSkPoh', data[:dat_sk_poh]) if data.key? :dat_sk_poh
        root << build_element('StatMOSS', data[:stat_moss]) if data.key? :stat_moss
        root << build_element('SazbaDPH1', data[:sazba_dph1]) if data.key? :sazba_dph1
        root << build_element('SazbaDPH2', data[:sazba_dph2]) if data.key? :sazba_dph2
        root << build_element('PrimDoklad', data[:prim_doklad]) if data.key? :prim_doklad
        root << build_element('VarSymbol', data[:var_symbol]) if data.key? :var_symbol
        root << build_element('ParSymbol', data[:par_symbol]) if data.key? :par_symbol
        root << build_element('TypTransakce', data[:typ_transakce]) if data.key? :typ_transakce
        root << build_element('DodaciPodm', data[:dodaci_podm]) if data.key? :dodaci_podm
        root << build_element('DruhDopravy', data[:druh_dopravy]) if data.key? :druh_dopravy
        root << build_element('StOdeslUrc', data[:st_odesl_urc]) if data.key? :st_odesl_urc
        root << build_element('DopravTuz', data[:doprav_tuz]) if data.key? :doprav_tuz
        root << build_element('DopravZahr', data[:doprav_zahr]) if data.key? :doprav_zahr
        root << build_element('DatumITS', data[:datum_its]) if data.key? :datum_its
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva
        root << build_element('iDokladID', data[:i_doklad_id]) if data.key? :i_doklad_id
        root << build_element('iDoklAgend', data[:i_dokl_agend]) if data.key? :i_dokl_agend
        root << build_element('Celkem', data[:celkem]) if data.key? :celkem

        if data.key? :eet
          root << EETType.new('EET', data[:eet]).builder
        end

        if data.key? :valuty
          root << Valuty.new('Valuty', data[:valuty]).builder
        end

        if data.key? :dod_odb
          root << SkDokladFirmaType.new('DodOdb', data[:dod_odb]).builder
        end

        if data.key? :konec_prij
          root << KonecPrijFirmaType.new('KonecPrij', data[:konec_prij]).builder
        end

        if data.key? :import
          root << Import.new('Import', data[:import]).builder
        end

        if data.key? :sklad_pro_pr
          root << SkladType.new('SkladProPr', data[:sklad_pro_pr]).builder
        end

        if data.key? :moje_firma
          root << MojeFirmaType.new('MojeFirma', data[:moje_firma]).builder
        end

        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end

        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end

        if data.key? :polozka
          data[:polozka].each { |i| root << PolSklDoklType.new('Polozka', i).builder }
        end

        if data.key? :seznam_nep_plateb
          element = Ox::Element.new('SeznamNepPlateb')
          data[:seznam_nep_plateb].each { |i| element << NepPlatbaType.new('NepPlatba', i).builder }
          root << element
        end

        if data.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          data[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end