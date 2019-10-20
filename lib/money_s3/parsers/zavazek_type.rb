module MoneyS3
  module Parsers
    class ZavazekType
      include ParserCore::BaseParser

      def doklad
        at 'Doklad'
      end

      def doklad_attributes
        attributes_at 'Doklad'
      end

      def zpusob_uctovani
        at 'ZpusobUctovani'
      end

      def zpusob_uctovani_attributes
        attributes_at 'ZpusobUctovani'
      end

      def storno
        at 'Storno'
      end

      def storno_attributes
        attributes_at 'Storno'
      end

      def del
        at 'Del'
      end

      def del_attributes
        attributes_at 'Del'
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

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def pr_dokl
        at 'PrDokl'
      end

      def pr_dokl_attributes
        attributes_at 'PrDokl'
      end

      def puv_c_dokl
        at 'PuvCDokl'
      end

      def puv_c_dokl_attributes
        attributes_at 'PuvCDokl'
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

      def kon_sym
        at 'KonSym'
      end

      def kon_sym_attributes
        attributes_at 'KonSym'
      end

      def spec_sym
        at 'SpecSym'
      end

      def spec_sym_attributes
        attributes_at 'SpecSym'
      end

      def dat_uc_pr
        at 'DatUcPr'
      end

      def dat_uc_pr_attributes
        attributes_at 'DatUcPr'
      end

      def dat_vyst
        at 'DatVyst'
      end

      def dat_vyst_attributes
        attributes_at 'DatVyst'
      end

      def dat_spl
        at 'DatSpl'
      end

      def dat_spl_attributes
        attributes_at 'DatSpl'
      end

      def dat_pln
        at 'DatPln'
      end

      def dat_pln_attributes
        attributes_at 'DatPln'
      end

      def doruceno
        at 'Doruceno'
      end

      def doruceno_attributes
        attributes_at 'Doruceno'
      end

      def dbrpis
        at 'Dbrpis'
      end

      def dbrpis_attributes
        attributes_at 'Dbrpis'
      end

      def dobr_duzp
        at 'DobrDUZP'
      end

      def dobr_duzp_attributes
        attributes_at 'DobrDUZP'
      end

      def adresa
        submodel_at(DokladFirmaType, 'Adresa')
      end

      def uc_pokl
        at 'UcPokl'
      end

      def uc_pokl_attributes
        attributes_at 'UcPokl'
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

      def plnen_dph
        at 'PlnenDPH'
      end

      def plnen_dph_attributes
        attributes_at 'PlnenDPH'
      end

      def ucel_zd_pl
        at 'UcelZdPl'
      end

      def ucel_zd_pl_attributes
        attributes_at 'UcelZdPl'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def zp_vyp_dph
        at 'ZpVypDPH'
      end

      def zp_vyp_dph_attributes
        attributes_at 'ZpVypDPH'
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

      def uh_zbyva
        at 'UhZbyva'
      end

      def uh_zbyva_attributes
        attributes_at 'UhZbyva'
      end

      def uh_datum
        at 'UhDatum'
      end

      def uh_datum_attributes
        attributes_at 'UhDatum'
      end

      def uh_dokl
        at 'UhDokl'
      end

      def uh_dokl_attributes
        attributes_at 'UhDokl'
      end

      def pu_datum
        at 'PUDatum'
      end

      def pu_datum_attributes
        attributes_at 'PUDatum'
      end

      def pu_zbyva
        at 'PUZbyva'
      end

      def pu_zbyva_attributes
        attributes_at 'PUZbyva'
      end

      def valuty_k_uhr
        at 'ValutyKUhr'
      end

      def valuty_k_uhr_attributes
        attributes_at 'ValutyKUhr'
      end

      def dat_upom1
        at 'DatUpom1'
      end

      def dat_upom1_attributes
        attributes_at 'DatUpom1'
      end

      def dat_upom2
        at 'DatUpom2'
      end

      def dat_upom2_attributes
        attributes_at 'DatUpom2'
      end

      def dat_upom_l
        at 'DatUpomL'
      end

      def dat_upom_l_attributes
        attributes_at 'DatUpomL'
      end

      def typ_dokl
        at 'TypDokl'
      end

      def typ_dokl_attributes
        attributes_at 'TypDokl'
      end

      def zjedn_d
        at 'ZjednD'
      end

      def zjedn_d_attributes
        attributes_at 'ZjednD'
      end

      def vyst
        at 'Vyst'
      end

      def vyst_attributes
        attributes_at 'Vyst'
      end

      def seznam_rozuct_polozek
        array_of_at(RozuctPolozUDType, ['SeznamRozuctPolozek', 'RozuctPolozka'])
      end

      def seznam_norm_polozek
        array_of_at(NormPolozUDType, ['SeznamNormPolozek', 'NormPolozka'])
      end

      def moje_firma
        submodel_at(MojeFirmaType, 'MojeFirma')
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
        hash[:zpusob_uctovani] = zpusob_uctovani if has? 'ZpusobUctovani'
        hash[:zpusob_uctovani_attributes] = zpusob_uctovani_attributes if has? 'ZpusobUctovani'
        hash[:storno] = storno if has? 'Storno'
        hash[:storno_attributes] = storno_attributes if has? 'Storno'
        hash[:del] = del if has? 'Del'
        hash[:del_attributes] = del_attributes if has? 'Del'
        hash[:d_rada] = d_rada if has? 'DRada'
        hash[:d_rada_attributes] = d_rada_attributes if has? 'DRada'
        hash[:d_cislo] = d_cislo if has? 'DCislo'
        hash[:d_cislo_attributes] = d_cislo_attributes if has? 'DCislo'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:pr_dokl] = pr_dokl if has? 'PrDokl'
        hash[:pr_dokl_attributes] = pr_dokl_attributes if has? 'PrDokl'
        hash[:puv_c_dokl] = puv_c_dokl if has? 'PuvCDokl'
        hash[:puv_c_dokl_attributes] = puv_c_dokl_attributes if has? 'PuvCDokl'
        hash[:var_sym] = var_sym if has? 'VarSym'
        hash[:var_sym_attributes] = var_sym_attributes if has? 'VarSym'
        hash[:par_sym] = par_sym if has? 'ParSym'
        hash[:par_sym_attributes] = par_sym_attributes if has? 'ParSym'
        hash[:kon_sym] = kon_sym if has? 'KonSym'
        hash[:kon_sym_attributes] = kon_sym_attributes if has? 'KonSym'
        hash[:spec_sym] = spec_sym if has? 'SpecSym'
        hash[:spec_sym_attributes] = spec_sym_attributes if has? 'SpecSym'
        hash[:dat_uc_pr] = dat_uc_pr if has? 'DatUcPr'
        hash[:dat_uc_pr_attributes] = dat_uc_pr_attributes if has? 'DatUcPr'
        hash[:dat_vyst] = dat_vyst if has? 'DatVyst'
        hash[:dat_vyst_attributes] = dat_vyst_attributes if has? 'DatVyst'
        hash[:dat_spl] = dat_spl if has? 'DatSpl'
        hash[:dat_spl_attributes] = dat_spl_attributes if has? 'DatSpl'
        hash[:dat_pln] = dat_pln if has? 'DatPln'
        hash[:dat_pln_attributes] = dat_pln_attributes if has? 'DatPln'
        hash[:doruceno] = doruceno if has? 'Doruceno'
        hash[:doruceno_attributes] = doruceno_attributes if has? 'Doruceno'
        hash[:dbrpis] = dbrpis if has? 'Dbrpis'
        hash[:dbrpis_attributes] = dbrpis_attributes if has? 'Dbrpis'
        hash[:dobr_duzp] = dobr_duzp if has? 'DobrDUZP'
        hash[:dobr_duzp_attributes] = dobr_duzp_attributes if has? 'DobrDUZP'
        hash[:adresa] = adresa.to_h if has? 'Adresa'
        hash[:uc_pokl] = uc_pokl if has? 'UcPokl'
        hash[:uc_pokl_attributes] = uc_pokl_attributes if has? 'UcPokl'
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
        hash[:plnen_dph] = plnen_dph if has? 'PlnenDPH'
        hash[:plnen_dph_attributes] = plnen_dph_attributes if has? 'PlnenDPH'
        hash[:ucel_zd_pl] = ucel_zd_pl if has? 'UcelZdPl'
        hash[:ucel_zd_pl_attributes] = ucel_zd_pl_attributes if has? 'UcelZdPl'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:zp_vyp_dph] = zp_vyp_dph if has? 'ZpVypDPH'
        hash[:zp_vyp_dph_attributes] = zp_vyp_dph_attributes if has? 'ZpVypDPH'
        hash[:s_sazba] = s_sazba if has? 'SSazba'
        hash[:s_sazba_attributes] = s_sazba_attributes if has? 'SSazba'
        hash[:z_sazba] = z_sazba if has? 'ZSazba'
        hash[:z_sazba_attributes] = z_sazba_attributes if has? 'ZSazba'
        hash[:souhrn_dph] = souhrn_dph.to_h if has? 'SouhrnDPH'
        hash[:celkem] = celkem if has? 'Celkem'
        hash[:celkem_attributes] = celkem_attributes if has? 'Celkem'
        hash[:valuty] = valuty.to_h if has? 'Valuty'
        hash[:uh_zbyva] = uh_zbyva if has? 'UhZbyva'
        hash[:uh_zbyva_attributes] = uh_zbyva_attributes if has? 'UhZbyva'
        hash[:uh_datum] = uh_datum if has? 'UhDatum'
        hash[:uh_datum_attributes] = uh_datum_attributes if has? 'UhDatum'
        hash[:uh_dokl] = uh_dokl if has? 'UhDokl'
        hash[:uh_dokl_attributes] = uh_dokl_attributes if has? 'UhDokl'
        hash[:pu_datum] = pu_datum if has? 'PUDatum'
        hash[:pu_datum_attributes] = pu_datum_attributes if has? 'PUDatum'
        hash[:pu_zbyva] = pu_zbyva if has? 'PUZbyva'
        hash[:pu_zbyva_attributes] = pu_zbyva_attributes if has? 'PUZbyva'
        hash[:valuty_k_uhr] = valuty_k_uhr if has? 'ValutyKUhr'
        hash[:valuty_k_uhr_attributes] = valuty_k_uhr_attributes if has? 'ValutyKUhr'
        hash[:dat_upom1] = dat_upom1 if has? 'DatUpom1'
        hash[:dat_upom1_attributes] = dat_upom1_attributes if has? 'DatUpom1'
        hash[:dat_upom2] = dat_upom2 if has? 'DatUpom2'
        hash[:dat_upom2_attributes] = dat_upom2_attributes if has? 'DatUpom2'
        hash[:dat_upom_l] = dat_upom_l if has? 'DatUpomL'
        hash[:dat_upom_l_attributes] = dat_upom_l_attributes if has? 'DatUpomL'
        hash[:typ_dokl] = typ_dokl if has? 'TypDokl'
        hash[:typ_dokl_attributes] = typ_dokl_attributes if has? 'TypDokl'
        hash[:zjedn_d] = zjedn_d if has? 'ZjednD'
        hash[:zjedn_d_attributes] = zjedn_d_attributes if has? 'ZjednD'
        hash[:vyst] = vyst if has? 'Vyst'
        hash[:vyst_attributes] = vyst_attributes if has? 'Vyst'
        hash[:seznam_rozuct_polozek] = seznam_rozuct_polozek.map(&:to_h) if has? 'SeznamRozuctPolozek'
        hash[:seznam_norm_polozek] = seznam_norm_polozek.map(&:to_h) if has? 'SeznamNormPolozek'
        hash[:moje_firma] = moje_firma.to_h if has? 'MojeFirma'
        hash[:vlajky] = vlajky.to_h if has? 'Vlajky'
        hash[:dokumenty] = dokumenty if has? 'Dokumenty'

        hash
      end
    end
  end
end