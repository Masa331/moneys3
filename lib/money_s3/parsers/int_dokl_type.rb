module MoneyS3
  module Parsers
    class IntDoklType
      include ParserCore::BaseParser

      def doklad
        at 'Doklad'
      end

      def doklad_attributes
        attributes_at 'Doklad'
      end

      def eet
        submodel_at(EETType, 'EET')
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def zpusob_uctovani_attributes
        attributes_at 'ZpusobUctovani'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_uc_pr_attributes
        attributes_at 'DatUcPr'
      end

      def dat_pln
        at 'DatPln'
      end

      def dat_pln_attributes
        attributes_at 'DatPln'
      end

      def dat_upl_dph
        at 'DatUplDPH'
      end

      def dat_upl_dph_attributes
        attributes_at 'DatUplDPH'
      end

      def datum_kv
        at 'DatumKV'
      end

      def datum_kv_attributes
        attributes_at 'DatumKV'
      end

      def cislo_zapoc
        at 'CisloZapoc'
      end

      def cislo_zapoc_attributes
        attributes_at 'CisloZapoc'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def prijat_dokl_attributes
        attributes_at 'PrijatDokl'
      end

      def var_sym
        at 'VarSym'
      end

      def var_sym_attributes
        attributes_at 'VarSym'
      end

      def par_sym
        at 'ParSym'
      end

      def par_sym_attributes
        attributes_at 'ParSym'
      end

      def adresa
        submodel_at(DokladFirmaType, 'Adresa')
      end

      def pr_kont
        at 'PrKont'
      end

      def pr_kont_attributes
        attributes_at 'PrKont'
      end

      def cleneni
        at 'Cleneni'
      end

      def cleneni_attributes
        attributes_at 'Cleneni'
      end

      def stred
        at 'Stred'
      end

      def stred_attributes
        attributes_at 'Stred'
      end

      def zakazka
        at 'Zakazka'
      end

      def zakazka_attributes
        attributes_at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def cinnost_attributes
        attributes_at 'Cinnost'
      end

      def vyroba
        at 'Vyroba'
      end

      def vyroba_attributes
        attributes_at 'Vyroba'
      end

      def stat_moss
        at 'StatMOSS'
      end

      def stat_moss_attributes
        attributes_at 'StatMOSS'
      end

      def s_sazba
        at 'SSazba'
      end

      def s_sazba_attributes
        attributes_at 'SSazba'
      end

      def z_sazba
        at 'ZSazba'
      end

      def z_sazba_attributes
        attributes_at 'ZSazba'
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def celkem
        at 'Celkem'
      end

      def celkem_attributes
        attributes_at 'Celkem'
      end

      def valuty
        submodel_at(Valuty2, 'Valuty')
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def d_rada
        at 'DRada'
      end

      def d_rada_attributes
        attributes_at 'DRada'
      end

      def d_cislo
        at 'DCislo'
      end

      def d_cislo_attributes
        attributes_at 'DCislo'
      end

      def vyst
        at 'Vyst'
      end

      def vyst_attributes
        attributes_at 'Vyst'
      end

      def rezim
        at 'Rezim'
      end

      def rezim_attributes
        attributes_at 'Rezim'
      end

      def korekce_cen
        at 'KorekceCen'
      end

      def korekce_cen_attributes
        attributes_at 'KorekceCen'
      end

      def typ_dokl
        at 'TypDokl'
      end

      def typ_dokl_attributes
        attributes_at 'TypDokl'
      end

      def rozuct_polozka
        array_of_at(RozuctPolozIDType, ['RozuctPolozka'])
      end

      def norm_polozka
        array_of_at(NormPolozIDType, ['NormPolozka'])
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:doklad] = doklad if has? 'Doklad'
        hash[:doklad_attributes] = doklad_attributes if has? 'Doklad'
        hash[:eet] = eet.to_h if has? 'EET'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:zpusob_uctovani_attributes] = zpusob_uctovani_attributes if has? 'ZpusobUctovani'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_uc_pr_attributes] = dat_uc_pr_attributes if has? 'DatUcPr'
        hash[:dat_pln] = dat_pln if has? 'DatPln'
        hash[:dat_pln_attributes] = dat_pln_attributes if has? 'DatPln'
        hash[:dat_upl_dph] = dat_upl_dph if has? 'DatUplDPH'
        hash[:dat_upl_dph_attributes] = dat_upl_dph_attributes if has? 'DatUplDPH'
        hash[:datum_kv] = datum_kv if has? 'DatumKV'
        hash[:datum_kv_attributes] = datum_kv_attributes if has? 'DatumKV'
        hash[:cislo_zapoc] = cislo_zapoc if has? 'CisloZapoc'
        hash[:cislo_zapoc_attributes] = cislo_zapoc_attributes if has? 'CisloZapoc'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:prijat_dokl_attributes] = prijat_dokl_attributes if has? 'PrijatDokl'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:var_sym_attributes] = var_sym_attributes if has? 'VarSym'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:par_sym_attributes] = par_sym_attributes if has? 'ParSym'
        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:pr_kont] = pr_kont if has? 'PrKont'
        hash[:pr_kont_attributes] = pr_kont_attributes if has? 'PrKont'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:cleneni_attributes] = cleneni_attributes if has? 'Cleneni'
        hash[:stred] = stred if has? 'Stred'
        hash[:stred_attributes] = stred_attributes if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:zakazka_attributes] = zakazka_attributes if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:cinnost_attributes] = cinnost_attributes if has? 'Cinnost'
        hash[:vyroba] = vyroba if has? 'Vyroba'
        hash[:vyroba_attributes] = vyroba_attributes if has? 'Vyroba'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:stat_moss_attributes] = stat_moss_attributes if has? 'StatMOSS'
        hash[:s_sazba] = s_sazba if has? 'SSazba'
        hash[:s_sazba_attributes] = s_sazba_attributes if has? 'SSazba'
        hash[:z_sazba] = z_sazba if has? 'ZSazba'
        hash[:z_sazba_attributes] = z_sazba_attributes if has? 'ZSazba'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:celkem_attributes] = celkem_attributes if has? 'Celkem'
        hash[:valuty] = valuty.to_h if has? 'Valuty'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_rada_attributes] = d_rada_attributes if has? 'DRada'
        hash[:d_cislo] = d_cislo if has? 'DCislo'
        hash[:d_cislo_attributes] = d_cislo_attributes if has? 'DCislo'
        hash[:vyst] = vyst if has? 'Vyst'
        hash[:vyst_attributes] = vyst_attributes if has? 'Vyst'
        hash[:rezim] = rezim if has? 'Rezim'
        hash[:rezim_attributes] = rezim_attributes if has? 'Rezim'
        hash[:korekce_cen] = korekce_cen if has? 'KorekceCen'
        hash[:korekce_cen_attributes] = korekce_cen_attributes if has? 'KorekceCen'
        hash[:typ_dokl] = typ_dokl if has? 'TypDokl'
        hash[:typ_dokl_attributes] = typ_dokl_attributes if has? 'TypDokl'
        hash[:rozuct_polozka] = rozuct_polozka.map(&:to_h) if has? 'RozuctPolozka'
        hash[:norm_polozka] = norm_polozka.map(&:to_h) if has? 'NormPolozka'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end