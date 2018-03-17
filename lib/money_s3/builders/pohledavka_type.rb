require 'money_s3/builders/base_builder'
require 'money_s3/builders/eet_type'
require 'money_s3/builders/doklad_firma_type'
require 'money_s3/builders/valuty'
require 'money_s3/builders/moje_firma_type'
require 'money_s3/builders/vlajky'
require 'money_s3/builders/souhrn_dph_type'
require 'money_s3/builders/rozuct_poloz_ud_type'
require 'money_s3/builders/norm_poloz_ud_type'

module MoneyS3
  module Builders
    class PohledavkaType
      include BaseBuilder

      attr_accessor :doklad, :ev_cis_dokl, :zpusob_uctovani, :d_rada, :d_cislo, :popis, :c_objed, :puv_c_dokl, :var_sym, :par_sym, :kon_sym, :spec_sym, :dat_uc_pr, :dat_vyst, :dat_spl, :dat_pln, :doruceno, :dbrpis, :dobr_duzp, :uc_pokl, :pr_kont, :cleneni, :stred, :zakazka, :cinnost, :plnen_dph, :pozn, :stat_moss, :s_sazba, :z_sazba, :uh_zbyva, :uh_datum, :uh_dokl, :pu_datum, :pu_zbyva, :valuty_k_uhr, :dat_upom1, :dat_upom2, :dat_upom_l, :typ_dokl, :zjedn_d, :vyst, :celkem, :eet, :adresa, :valuty, :moje_firma, :vlajky, :souhrn_dph, :dokumenty, :seznam_rozuct_polozek, :seznam_norm_polozek

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Doklad') << doklad) if doklad
        root << (Ox::Element.new('EvCisDokl') << ev_cis_dokl) if ev_cis_dokl
        root << (Ox::Element.new('ZpusobUctovani') << zpusob_uctovani) if zpusob_uctovani
        root << (Ox::Element.new('DRada') << d_rada) if d_rada
        root << (Ox::Element.new('DCislo') << d_cislo) if d_cislo
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('CObjed') << c_objed) if c_objed
        root << (Ox::Element.new('PuvCDokl') << puv_c_dokl) if puv_c_dokl
        root << (Ox::Element.new('VarSym') << var_sym) if var_sym
        root << (Ox::Element.new('ParSym') << par_sym) if par_sym
        root << (Ox::Element.new('KonSym') << kon_sym) if kon_sym
        root << (Ox::Element.new('SpecSym') << spec_sym) if spec_sym
        root << (Ox::Element.new('DatUcPr') << dat_uc_pr) if dat_uc_pr
        root << (Ox::Element.new('DatVyst') << dat_vyst) if dat_vyst
        root << (Ox::Element.new('DatSpl') << dat_spl) if dat_spl
        root << (Ox::Element.new('DatPln') << dat_pln) if dat_pln
        root << (Ox::Element.new('Doruceno') << doruceno) if doruceno
        root << (Ox::Element.new('Dbrpis') << dbrpis) if dbrpis
        root << (Ox::Element.new('DobrDUZP') << dobr_duzp) if dobr_duzp
        root << (Ox::Element.new('UcPokl') << uc_pokl) if uc_pokl
        root << (Ox::Element.new('PrKont') << pr_kont) if pr_kont
        root << (Ox::Element.new('Cleneni') << cleneni) if cleneni
        root << (Ox::Element.new('Stred') << stred) if stred
        root << (Ox::Element.new('Zakazka') << zakazka) if zakazka
        root << (Ox::Element.new('Cinnost') << cinnost) if cinnost
        root << (Ox::Element.new('PlnenDPH') << plnen_dph) if plnen_dph
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('StatMOSS') << stat_moss) if stat_moss
        root << (Ox::Element.new('SSazba') << s_sazba) if s_sazba
        root << (Ox::Element.new('ZSazba') << z_sazba) if z_sazba
        root << (Ox::Element.new('UhZbyva') << uh_zbyva) if uh_zbyva
        root << (Ox::Element.new('UhDatum') << uh_datum) if uh_datum
        root << (Ox::Element.new('UhDokl') << uh_dokl) if uh_dokl
        root << (Ox::Element.new('PUDatum') << pu_datum) if pu_datum
        root << (Ox::Element.new('PUZbyva') << pu_zbyva) if pu_zbyva
        root << (Ox::Element.new('ValutyKUhr') << valuty_k_uhr) if valuty_k_uhr
        root << (Ox::Element.new('DatUpom1') << dat_upom1) if dat_upom1
        root << (Ox::Element.new('DatUpom2') << dat_upom2) if dat_upom2
        root << (Ox::Element.new('DatUpomL') << dat_upom_l) if dat_upom_l
        root << (Ox::Element.new('TypDokl') << typ_dokl) if typ_dokl
        root << (Ox::Element.new('ZjednD') << zjedn_d) if zjedn_d
        root << (Ox::Element.new('Vyst') << vyst) if vyst
        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << EETType.new(eet, 'EET').builder if eet
        root << DokladFirmaType.new(adresa, 'Adresa').builder if adresa
        root << Valuty.new(valuty, 'Valuty').builder if valuty
        root << MojeFirmaType.new(moje_firma, 'MojeFirma').builder if moje_firma
        root << Vlajky.new(vlajky, 'Vlajky').builder if vlajky
        root << SouhrnDPHType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph

        if seznam_rozuct_polozek
          element = Ox::Element.new('SeznamRozuctPolozek')
          seznam_rozuct_polozek.each { |i| element << RozuctPolozUDType.new(i, 'RozuctPolozka').builder }
          root << element
        end

        if seznam_norm_polozek
          element = Ox::Element.new('SeznamNormPolozek')
          seznam_norm_polozek.each { |i| element << NormPolozUDType.new(i, 'NormPolozka').builder }
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