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
    class Prijemka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :cislo_dokla
          element = Ox::Element.new('CisloDokla')
          element << attributes[:cislo_dokla] if attributes[:cislo_dokla]
          root << element
        end

        if attributes.key? :zpusob_uctovani
          element = Ox::Element.new('ZpusobUctovani')
          element << attributes[:zpusob_uctovani] if attributes[:zpusob_uctovani]
          root << element
        end

        if attributes.key? :c_objednavk
          element = Ox::Element.new('CObjednavk')
          element << attributes[:c_objednavk] if attributes[:c_objednavk]
          root << element
        end

        if attributes.key? :kp_from_odb
          element = Ox::Element.new('KPFromOdb')
          element << attributes[:kp_from_odb] if attributes[:kp_from_odb]
          root << element
        end

        if attributes.key? :datum
          element = Ox::Element.new('Datum')
          element << attributes[:datum] if attributes[:datum]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :d_rada
          element = Ox::Element.new('DRada')
          element << attributes[:d_rada] if attributes[:d_rada]
          root << element
        end

        if attributes.key? :stredisko
          element = Ox::Element.new('Stredisko')
          element << attributes[:stredisko] if attributes[:stredisko]
          root << element
        end

        if attributes.key? :zakazka
          element = Ox::Element.new('Zakazka')
          element << attributes[:zakazka] if attributes[:zakazka]
          root << element
        end

        if attributes.key? :cinnost
          element = Ox::Element.new('Cinnost')
          element << attributes[:cinnost] if attributes[:cinnost]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :vystavil
          element = Ox::Element.new('Vystavil')
          element << attributes[:vystavil] if attributes[:vystavil]
          root << element
        end

        if attributes.key? :vyriz_faktu
          element = Ox::Element.new('VyrizFaktu')
          element << attributes[:vyriz_faktu] if attributes[:vyriz_faktu]
          root << element
        end

        if attributes.key? :text_pred_po
          element = Ox::Element.new('TextPredPo')
          element << attributes[:text_pred_po] if attributes[:text_pred_po]
          root << element
        end

        if attributes.key? :text_za_pol
          element = Ox::Element.new('TextZaPol')
          element << attributes[:text_za_pol] if attributes[:text_za_pol]
          root << element
        end

        if attributes.key? :nadpis
          element = Ox::Element.new('Nadpis')
          element << attributes[:nadpis] if attributes[:nadpis]
          root << element
        end

        if attributes.key? :zkrat_typu_d
          element = Ox::Element.new('ZkratTypuD')
          element << attributes[:zkrat_typu_d] if attributes[:zkrat_typu_d]
          root << element
        end

        if attributes.key? :poriz_cena
          element = Ox::Element.new('PorizCena')
          element << attributes[:poriz_cena] if attributes[:poriz_cena]
          root << element
        end

        if attributes.key? :popis_x
          element = Ox::Element.new('PopisX')
          element << attributes[:popis_x] if attributes[:popis_x]
          root << element
        end

        if attributes.key? :fiskal
          element = Ox::Element.new('Fiskal')
          element << attributes[:fiskal] if attributes[:fiskal]
          root << element
        end

        if attributes.key? :fis_doklad
          element = Ox::Element.new('FisDoklad')
          element << attributes[:fis_doklad] if attributes[:fis_doklad]
          root << element
        end

        if attributes.key? :dat_sk_poh
          element = Ox::Element.new('DatSkPoh')
          element << attributes[:dat_sk_poh] if attributes[:dat_sk_poh]
          root << element
        end

        if attributes.key? :stat_moss
          element = Ox::Element.new('StatMOSS')
          element << attributes[:stat_moss] if attributes[:stat_moss]
          root << element
        end

        if attributes.key? :sazba_dph1
          element = Ox::Element.new('SazbaDPH1')
          element << attributes[:sazba_dph1] if attributes[:sazba_dph1]
          root << element
        end

        if attributes.key? :sazba_dph2
          element = Ox::Element.new('SazbaDPH2')
          element << attributes[:sazba_dph2] if attributes[:sazba_dph2]
          root << element
        end

        if attributes.key? :prim_doklad
          element = Ox::Element.new('PrimDoklad')
          element << attributes[:prim_doklad] if attributes[:prim_doklad]
          root << element
        end

        if attributes.key? :var_symbol
          element = Ox::Element.new('VarSymbol')
          element << attributes[:var_symbol] if attributes[:var_symbol]
          root << element
        end

        if attributes.key? :par_symbol
          element = Ox::Element.new('ParSymbol')
          element << attributes[:par_symbol] if attributes[:par_symbol]
          root << element
        end

        if attributes.key? :typ_transakce
          element = Ox::Element.new('TypTransakce')
          element << attributes[:typ_transakce] if attributes[:typ_transakce]
          root << element
        end

        if attributes.key? :dodaci_podm
          element = Ox::Element.new('DodaciPodm')
          element << attributes[:dodaci_podm] if attributes[:dodaci_podm]
          root << element
        end

        if attributes.key? :druh_dopravy
          element = Ox::Element.new('DruhDopravy')
          element << attributes[:druh_dopravy] if attributes[:druh_dopravy]
          root << element
        end

        if attributes.key? :st_odesl_urc
          element = Ox::Element.new('StOdeslUrc')
          element << attributes[:st_odesl_urc] if attributes[:st_odesl_urc]
          root << element
        end

        if attributes.key? :doprav_tuz
          element = Ox::Element.new('DopravTuz')
          element << attributes[:doprav_tuz] if attributes[:doprav_tuz]
          root << element
        end

        if attributes.key? :doprav_zahr
          element = Ox::Element.new('DopravZahr')
          element << attributes[:doprav_zahr] if attributes[:doprav_zahr]
          root << element
        end

        if attributes.key? :datum_its
          element = Ox::Element.new('DatumITS')
          element << attributes[:datum_its] if attributes[:datum_its]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        if attributes.key? :i_doklad_id
          element = Ox::Element.new('iDokladID')
          element << attributes[:i_doklad_id] if attributes[:i_doklad_id]
          root << element
        end

        if attributes.key? :i_dokl_agend
          element = Ox::Element.new('iDoklAgend')
          element << attributes[:i_dokl_agend] if attributes[:i_dokl_agend]
          root << element
        end

        if attributes.key? :celkem
          element = Ox::Element.new('Celkem')
          element << attributes[:celkem] if attributes[:celkem]
          root << element
        end

        if attributes.key? :eet
          root << EETType.new(attributes[:eet], 'EET').builder
        end

        if attributes.key? :valuty
          root << Valuty.new(attributes[:valuty], 'Valuty').builder
        end

        if attributes.key? :dod_odb
          root << SkDokladFirmaType.new(attributes[:dod_odb], 'DodOdb').builder
        end

        if attributes.key? :konec_prij
          root << KonecPrijFirmaType.new(attributes[:konec_prij], 'KonecPrij').builder
        end

        if attributes.key? :import
          root << Import.new(attributes[:import], 'Import').builder
        end

        if attributes.key? :sklad_pro_pr
          root << SkladType.new(attributes[:sklad_pro_pr], 'SkladProPr').builder
        end

        if attributes.key? :moje_firma
          root << MojeFirmaType.new(attributes[:moje_firma], 'MojeFirma').builder
        end

        if attributes.key? :vlajky
          root << Vlajky.new(attributes[:vlajky], 'Vlajky').builder
        end

        if attributes.key? :souhrn_dph
          root << SouhrnDPHType.new(attributes[:souhrn_dph], 'SouhrnDPH').builder
        end

        if attributes.key? :polozka
          attributes[:polozka].each { |i| root << PolSklDoklType.new(i, 'Polozka').builder }
        end

        if attributes.key? :seznam_nep_plateb
          element = Ox::Element.new('SeznamNepPlateb')
          attributes[:seznam_nep_plateb].each { |i| element << NepPlatbaType.new(i, 'NepPlatba').builder }
          root << element
        end

        if attributes.key? :dokumenty
          element = Ox::Element.new('Dokumenty')
          attributes[:dokumenty].map { |i| Ox::Element.new('Dokument') << i }.each { |i| element << i }
          root << element
        end

        root
      end
    end
  end
end