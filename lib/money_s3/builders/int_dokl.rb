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

      attr_accessor :doklad, :zpusob_uctovani, :popis, :dat_uc_pr, :dat_pln, :dat_upl_dph, :datum_kv, :cislo_zapoc, :prijat_dokl, :var_sym, :par_sym, :pr_kont, :cleneni, :stred, :zakazka, :cinnost, :vyroba, :stat_moss, :s_sazba, :z_sazba, :pozn, :d_rada, :d_cislo, :vyst, :rezim, :korekce_cen, :typ_dokl, :celkem, :eet, :adresa, :valuty, :vlajky, :souhrn_dph, :dokumenty, :rozuct_polozka, :norm_polozka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Doklad') << doklad) if doklad
        root << (Ox::Element.new('ZpusobUctovani') << zpusob_uctovani) if zpusob_uctovani
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('DatUcPr') << dat_uc_pr) if dat_uc_pr
        root << (Ox::Element.new('DatPln') << dat_pln) if dat_pln
        root << (Ox::Element.new('DatUplDPH') << dat_upl_dph) if dat_upl_dph
        root << (Ox::Element.new('DatumKV') << datum_kv) if datum_kv
        root << (Ox::Element.new('CisloZapoc') << cislo_zapoc) if cislo_zapoc
        root << (Ox::Element.new('PrijatDokl') << prijat_dokl) if prijat_dokl
        root << (Ox::Element.new('VarSym') << var_sym) if var_sym
        root << (Ox::Element.new('ParSym') << par_sym) if par_sym
        root << (Ox::Element.new('PrKont') << pr_kont) if pr_kont
        root << (Ox::Element.new('Cleneni') << cleneni) if cleneni
        root << (Ox::Element.new('Stred') << stred) if stred
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('Vyroba') << vyroba) if vyroba
        root << (Ox::Element.new('StatMOSS') << stat_moss) if stat_moss
        root << (Ox::Element.new('SSazba') << s_sazba) if s_sazba
        root << (Ox::Element.new('ZSazba') << z_sazba) if z_sazba
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('DRada') << d_rada) if d_rada
        root << (Ox::Element.new('DCislo') << d_cislo) if d_cislo
        root << (Ox::Element.new('Vyst') << vyst) if vyst
        root << (Ox::Element.new('Rezim') << rezim) if rezim
        root << (Ox::Element.new('KorekceCen') << korekce_cen) if korekce_cen
        root << (Ox::Element.new('TypDokl') << typ_dokl) if typ_dokl
        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << EETType.new(eet, 'EET').builder if eet
        root << DokladFirmaType.new(adresa, 'Adresa').builder if adresa
        root << Valuty.new(valuty, 'Valuty').builder if valuty
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky
        root << SouhrnDPHType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph

        if rozuct_polozka
          rozuct_polozka.each { |i| root << RozuctPolozIDType.new(i, 'RozuctPolozka').builder }
        end

        if norm_polozka
          norm_polozka.each { |i| root << NormPolozIDType.new(i, 'NormPolozka').builder }
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