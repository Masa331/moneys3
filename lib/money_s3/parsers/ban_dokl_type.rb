module MoneyS3
  module Parsers
    class BanDoklType
      include ParserCore::BaseParser

      def vydej
        at 'Vydej'
      end

      def doklad
        at 'Doklad'
      end

      def ev_cis_dokl
        at 'EvCisDokl'
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def popis
        at 'Popis'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_vyst
        at 'DatVyst'
      end

      def dat_plat
        at 'DatPlat'
      end

      def dat_pln
        at 'DatPln'
      end

      def dat_upl_dph
        at 'DatUplDPH'
      end

      def vypis
        at 'Vypis'
      end

      def id_polozky
        at 'IDPolozky'
      end

      def ad_ucet
        at 'AdUcet'
      end

      def ad_kod
        at 'AdKod'
      end

      def prijat_dokl
        at 'PrijatDokl'
      end

      def var_sym
        at 'VarSym'
      end

      def par_sym
        at 'ParSym'
      end

      def kon_sym
        at 'KonSym'
      end

      def spec_sym
        at 'SpecSym'
      end

      def adresa
        submodel_at(DokladFirmaType, 'Adresa')
      end

      def pr_kont
        at 'PrKont'
      end

      def cleneni
        at 'Cleneni'
      end

      def stred
        at 'Stred'
      end

      def zakazka
        at 'Zakazka'
      end

      def cinnost
        at 'Cinnost'
      end

      def stat_moss
        at 'StatMOSS'
      end

      def s_sazba
        at 'SSazba'
      end

      def z_sazba
        at 'ZSazba'
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, 'SouhrnDPH')
      end

      def celkem
        at 'Celkem'
      end

      def valuty
        submodel_at(Valuty2, 'Valuty')
      end

      def pozn
        at 'Pozn'
      end

      def d_rada
        at 'DRada'
      end

      def d_cislo
        at 'DCislo'
      end

      def vyst
        at 'Vyst'
      end

      def typ_dokl
        at 'TypDokl'
      end

      def ucet
        submodel_at(Ucet, 'Ucet')
      end

      def seznam_norm_polozek
        array_of_at(NormPolozUDType, ['SeznamNormPolozek', 'NormPolozka'])
      end

      def seznam_rozuct_polozek
        array_of_at(RozuctPolozUDType, ['SeznamRozuctPolozek', 'RozuctPolozka'])
      end

      def vlajky
        submodel_at(Vlajky, 'Vlajky')
      end

      def dokumenty
        array_of_at(String, ['Dokumenty', 'Dokument'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:vydej] = vydej if has? 'Vydej'
        hash[:doklad] = doklad if has? 'Doklad'
        hash[:ev_cis_dokl] = ev_cis_dokl if has? 'EvCisDokl'
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:popis] = popis if has? 'Popis'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_vyst] = dat_vyst if has? 'DatVyst'
        hash[:dat_plat] = dat_plat if has? 'DatPlat'
        hash[:dat_pln] = dat_pln if has? 'DatPln'
        hash[:dat_upl_dph] = dat_upl_dph if has? 'DatUplDPH'
        hash[:vypis] = vypis if has? 'Vypis'
        hash[:id_polozky] = id_polozky if has? 'IDPolozky'
        hash[:ad_ucet] = ad_ucet if has? 'AdUcet'
        hash[:ad_kod] = ad_kod if has? 'AdKod'
        hash[:prijat_dokl] = prijat_dokl if has? 'PrijatDokl'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:kon_sym] = kon_sym if has? 'KonSym'
        hash[:spec_sym] = spec_sym if has? 'SpecSym'
        hash[:adresa] = adresa.to_h_with_attrs if has? 'Adresa'
        hash[:pr_kont] = pr_kont if has? 'PrKont'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:stred] = stred if has? 'Stred'
        hash[:zakazka] = zakazka if has? 'Zakazka'
        hash[:cinnost] = cinnost if has? 'Cinnost'
        hash[:stat_moss] = stat_moss if has? 'StatMOSS'
        hash[:s_sazba] = s_sazba if has? 'SSazba'
        hash[:z_sazba] = z_sazba if has? 'ZSazba'
        hash[:souhrn_dph] = souhrn_dph.to_h_with_attrs if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:valuty] = valuty.to_h_with_attrs if has? 'Valuty'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_cislo] = d_cislo if has? 'DCislo'
        hash[:vyst] = vyst if has? 'Vyst'
        hash[:typ_dokl] = typ_dokl if has? 'TypDokl'
        hash[:ucet] = ucet.to_h_with_attrs if has? 'Ucet'
        hash[:seznam_norm_polozek] = seznam_norm_polozek.map(&:to_h_with_attrs) if has? 'SeznamNormPolozek'
        hash[:seznam_rozuct_polozek] = seznam_rozuct_polozek.map(&:to_h_with_attrs) if has? 'SeznamRozuctPolozek'
        hash[:vlajky] = vlajky.to_h_with_attrs if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end