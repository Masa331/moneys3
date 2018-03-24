require 'money_s3/builders/base_builder'
require 'money_s3/builders/eet_type'
require 'money_s3/builders/doklad_firma_type'
require 'money_s3/builders/valuty'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/souhrn_dph_type'
require 'money_s3/builders/rozuct_poloz_id_type'
require 'money_s3/builders/norm_poloz_id_type'

module MoneyS3
  module Builders
    class IntDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :doklad
          element = Ox::Element.new('Doklad')
          element << attributes[:doklad] if attributes[:doklad]
          root << element
        end

        if attributes.key? :zpusob_uctovani
          element = Ox::Element.new('ZpusobUctovani')
          element << attributes[:zpusob_uctovani] if attributes[:zpusob_uctovani]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :dat_uc_pr
          element = Ox::Element.new('DatUcPr')
          element << attributes[:dat_uc_pr] if attributes[:dat_uc_pr]
          root << element
        end

        if attributes.key? :dat_pln
          element = Ox::Element.new('DatPln')
          element << attributes[:dat_pln] if attributes[:dat_pln]
          root << element
        end

        if attributes.key? :dat_upl_dph
          element = Ox::Element.new('DatUplDPH')
          element << attributes[:dat_upl_dph] if attributes[:dat_upl_dph]
          root << element
        end

        if attributes.key? :datum_kv
          element = Ox::Element.new('DatumKV')
          element << attributes[:datum_kv] if attributes[:datum_kv]
          root << element
        end

        if attributes.key? :cislo_zapoc
          element = Ox::Element.new('CisloZapoc')
          element << attributes[:cislo_zapoc] if attributes[:cislo_zapoc]
          root << element
        end

        if attributes.key? :prijat_dokl
          element = Ox::Element.new('PrijatDokl')
          element << attributes[:prijat_dokl] if attributes[:prijat_dokl]
          root << element
        end

        if attributes.key? :var_sym
          element = Ox::Element.new('VarSym')
          element << attributes[:var_sym] if attributes[:var_sym]
          root << element
        end

        if attributes.key? :par_sym
          element = Ox::Element.new('ParSym')
          element << attributes[:par_sym] if attributes[:par_sym]
          root << element
        end

        if attributes.key? :pr_kont
          element = Ox::Element.new('PrKont')
          element << attributes[:pr_kont] if attributes[:pr_kont]
          root << element
        end

        if attributes.key? :cleneni
          element = Ox::Element.new('Cleneni')
          element << attributes[:cleneni] if attributes[:cleneni]
          root << element
        end

        if attributes.key? :stred
          element = Ox::Element.new('Stred')
          element << attributes[:stred] if attributes[:stred]
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

        if attributes.key? :vyroba
          element = Ox::Element.new('Vyroba')
          element << attributes[:vyroba] if attributes[:vyroba]
          root << element
        end

        if attributes.key? :stat_moss
          element = Ox::Element.new('StatMOSS')
          element << attributes[:stat_moss] if attributes[:stat_moss]
          root << element
        end

        if attributes.key? :s_sazba
          element = Ox::Element.new('SSazba')
          element << attributes[:s_sazba] if attributes[:s_sazba]
          root << element
        end

        if attributes.key? :z_sazba
          element = Ox::Element.new('ZSazba')
          element << attributes[:z_sazba] if attributes[:z_sazba]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :d_rada
          element = Ox::Element.new('DRada')
          element << attributes[:d_rada] if attributes[:d_rada]
          root << element
        end

        if attributes.key? :d_cislo
          element = Ox::Element.new('DCislo')
          element << attributes[:d_cislo] if attributes[:d_cislo]
          root << element
        end

        if attributes.key? :vyst
          element = Ox::Element.new('Vyst')
          element << attributes[:vyst] if attributes[:vyst]
          root << element
        end

        if attributes.key? :rezim
          element = Ox::Element.new('Rezim')
          element << attributes[:rezim] if attributes[:rezim]
          root << element
        end

        if attributes.key? :korekce_cen
          element = Ox::Element.new('KorekceCen')
          element << attributes[:korekce_cen] if attributes[:korekce_cen]
          root << element
        end

        if attributes.key? :typ_dokl
          element = Ox::Element.new('TypDokl')
          element << attributes[:typ_dokl] if attributes[:typ_dokl]
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

        if attributes.key? :adresa
          root << DokladFirmaType.new(attributes[:adresa], 'Adresa').builder
        end

        if attributes.key? :valuty
          root << Valuty.new(attributes[:valuty], 'Valuty').builder
        end

        if attributes.key? :vlajky
          root << Vlajky.new(attributes[:vlajky], 'Vlajky').builder
        end

        if attributes.key? :souhrn_dph
          root << SouhrnDPHType.new(attributes[:souhrn_dph], 'SouhrnDPH').builder
        end

        if attributes.key? :rozuct_polozka
          attributes[:rozuct_polozka].each { |i| root << RozuctPolozIDType.new(i, 'RozuctPolozka').builder }
        end

        if attributes.key? :norm_polozka
          attributes[:norm_polozka].each { |i| root << NormPolozIDType.new(i, 'NormPolozka').builder }
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