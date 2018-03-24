require 'money_s3/builders/base_builder'
require 'money_s3/builders/doklad_firma_type'
require 'money_s3/builders/valuty'
require 'money_s3/builders/ucet'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/souhrn_dph_type'
require 'money_s3/builders/norm_poloz_ud_type'
require 'money_s3/builders/rozuct_poloz_ud_type'

module MoneyS3
  module Builders
    class BankDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Vydej', data[:vydej]) if data.key? :vydej
        root << build_element('Doklad', data[:doklad]) if data.key? :doklad
        root << build_element('EvCisDokl', data[:ev_cis_dokl]) if data.key? :ev_cis_dokl
        root << build_element('ZpusobUctovani', data[:zpusob_uctovani]) if data.key? :zpusob_uctovani
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('DatUcPr', data[:dat_uc_pr]) if data.key? :dat_uc_pr
        root << build_element('DatVyst', data[:dat_vyst]) if data.key? :dat_vyst
        root << build_element('DatPlat', data[:dat_plat]) if data.key? :dat_plat
        root << build_element('DatPln', data[:dat_pln]) if data.key? :dat_pln
        root << build_element('DatUplDPH', data[:dat_upl_dph]) if data.key? :dat_upl_dph
        root << build_element('Vypis', data[:vypis]) if data.key? :vypis
        root << build_element('IDPolozky', data[:id_polozky]) if data.key? :id_polozky
        root << build_element('AdUcet', data[:ad_ucet]) if data.key? :ad_ucet
        root << build_element('AdKod', data[:ad_kod]) if data.key? :ad_kod
        root << build_element('PrijatDokl', data[:prijat_dokl]) if data.key? :prijat_dokl
        root << build_element('VarSym', data[:var_sym]) if data.key? :var_sym
        root << build_element('ParSym', data[:par_sym]) if data.key? :par_sym
        root << build_element('KonSym', data[:kon_sym]) if data.key? :kon_sym
        root << build_element('SpecSym', data[:spec_sym]) if data.key? :spec_sym
        root << build_element('PrKont', data[:pr_kont]) if data.key? :pr_kont
        root << build_element('Cleneni', data[:cleneni]) if data.key? :cleneni
        root << build_element('Stred', data[:stred]) if data.key? :stred
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('StatMOSS', data[:stat_moss]) if data.key? :stat_moss
        root << build_element('SSazba', data[:s_sazba]) if data.key? :s_sazba
        root << build_element('ZSazba', data[:z_sazba]) if data.key? :z_sazba
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('DRada', data[:d_rada]) if data.key? :d_rada
        root << build_element('DCislo', data[:d_cislo]) if data.key? :d_cislo
        root << build_element('Vyst', data[:vyst]) if data.key? :vyst
        root << build_element('TypDokl', data[:typ_dokl]) if data.key? :typ_dokl
        root << build_element('Celkem', data[:celkem]) if data.key? :celkem

        if data.key? :adresa
          root << DokladFirmaType.new('Adresa', data[:adresa]).builder
        end

        if data.key? :valuty
          root << Valuty.new('Valuty', data[:valuty]).builder
        end

        if data.key? :ucet
          root << Ucet.new('Ucet', data[:ucet]).builder
        end

        if data.key? :vlajky
          root << Vlajky.new('Vlajky', data[:vlajky]).builder
        end

        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end

        if data.key? :seznam_norm_polozek
          element = Ox::Element.new('SeznamNormPolozek')
          data[:seznam_norm_polozek].each { |i| element << NormPolozUDType.new('NormPolozka', i).builder }
          root << element
        end

        if data.key? :seznam_rozuct_polozek
          element = Ox::Element.new('SeznamRozuctPolozek')
          data[:seznam_rozuct_polozek].each { |i| element << RozuctPolozUDType.new('RozuctPolozka', i).builder }
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