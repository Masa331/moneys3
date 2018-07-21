module MoneyS3
  module Parsers
    class SkupinaZasobType
      include ParserCore::BaseParser

      def zkratka
        at 'Zkratka'
      end

      def zkratka_attributes
        attributes_at 'Zkratka'
      end

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def zkratka0
        at 'Zkratka0'
      end

      def zkratka0_attributes
        attributes_at 'Zkratka0'
      end

      def zkratka1
        at 'Zkratka1'
      end

      def zkratka1_attributes
        attributes_at 'Zkratka1'
      end

      def zkratka2
        at 'Zkratka2'
      end

      def zkratka2_attributes
        attributes_at 'Zkratka2'
      end

      def zkratka3
        at 'Zkratka3'
      end

      def zkratka3_attributes
        attributes_at 'Zkratka3'
      end

      def zkratka4
        at 'Zkratka4'
      end

      def zkratka4_attributes
        attributes_at 'Zkratka4'
      end

      def zkratka5
        at 'Zkratka5'
      end

      def zkratka5_attributes
        attributes_at 'Zkratka5'
      end

      def zkratka6
        at 'Zkratka6'
      end

      def zkratka6_attributes
        attributes_at 'Zkratka6'
      end

      def konfigurace
        submodel_at(Konfigurace, 'konfigurace')
      end

      def definice_ceny
        submodel_at(DefiniceCeny, 'definiceCeny')
      end

      def ceny
        at 'Ceny'
      end

      def ceny_attributes
        attributes_at 'Ceny'
      end

      def nast_sklad
        at 'NastSklad'
      end

      def nast_sklad_attributes
        attributes_at 'NastSklad'
      end

      def cis_skup_vpl
        at 'CisSkupVPL'
      end

      def cis_skup_vpl_attributes
        attributes_at 'CisSkupVPL'
      end

      def in_cis_odde
        at 'IN_CisOdde'
      end

      def in_cis_odde_attributes
        attributes_at 'IN_CisOdde'
      end

      def uc_pohyb_m
        submodel_at(UctyPohybuType, 'UcPohybM')
      end

      def uc_pohyb_z
        submodel_at(UctyPohybuType, 'UcPohybZ')
      end

      def uc_pohyb_v
        submodel_at(UctyPohybuType, 'UcPohybV')
      end

      def uc_vyrobk_vv
        at 'UcVyrobkVV'
      end

      def uc_vyrobk_vv_attributes
        attributes_at 'UcVyrobkVV'
      end

      def prodejk_vz
        at 'ProdejkVz'
      end

      def prodejk_vz_attributes
        attributes_at 'ProdejkVz'
      end

      def v_dod_lst_vz
        at 'VDodLstVz'
      end

      def v_dod_lst_vz_attributes
        attributes_at 'VDodLstVz'
      end

      def p_dod_lst_vz
        at 'PDodLstVz'
      end

      def p_dod_lst_vz_attributes
        attributes_at 'PDodLstVz'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:zkratka_attributes] = zkratka_attributes if has? 'Zkratka'
        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:zkratka0] = zkratka0 if has? 'Zkratka0'
        hash[:zkratka0_attributes] = zkratka0_attributes if has? 'Zkratka0'
        hash[:zkratka1] = zkratka1 if has? 'Zkratka1'
        hash[:zkratka1_attributes] = zkratka1_attributes if has? 'Zkratka1'
        hash[:zkratka2] = zkratka2 if has? 'Zkratka2'
        hash[:zkratka2_attributes] = zkratka2_attributes if has? 'Zkratka2'
        hash[:zkratka3] = zkratka3 if has? 'Zkratka3'
        hash[:zkratka3_attributes] = zkratka3_attributes if has? 'Zkratka3'
        hash[:zkratka4] = zkratka4 if has? 'Zkratka4'
        hash[:zkratka4_attributes] = zkratka4_attributes if has? 'Zkratka4'
        hash[:zkratka5] = zkratka5 if has? 'Zkratka5'
        hash[:zkratka5_attributes] = zkratka5_attributes if has? 'Zkratka5'
        hash[:zkratka6] = zkratka6 if has? 'Zkratka6'
        hash[:zkratka6_attributes] = zkratka6_attributes if has? 'Zkratka6'
        hash[:konfigurace] = konfigurace.to_h if has? 'konfigurace'
        hash[:definice_ceny] = definice_ceny.to_h if has? 'definiceCeny'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:ceny_attributes] = ceny_attributes if has? 'Ceny'
        hash[:nast_sklad] = nast_sklad if has? 'NastSklad'
        hash[:nast_sklad_attributes] = nast_sklad_attributes if has? 'NastSklad'
        hash[:cis_skup_vpl] = cis_skup_vpl if has? 'CisSkupVPL'
        hash[:cis_skup_vpl_attributes] = cis_skup_vpl_attributes if has? 'CisSkupVPL'
        hash[:in_cis_odde] = in_cis_odde if has? 'IN_CisOdde'
        hash[:in_cis_odde_attributes] = in_cis_odde_attributes if has? 'IN_CisOdde'
        hash[:uc_pohyb_m] = uc_pohyb_m.to_h if has? 'UcPohybM'
        hash[:uc_pohyb_z] = uc_pohyb_z.to_h if has? 'UcPohybZ'
        hash[:uc_pohyb_v] = uc_pohyb_v.to_h if has? 'UcPohybV'
        hash[:uc_vyrobk_vv] = uc_vyrobk_vv if has? 'UcVyrobkVV'
        hash[:uc_vyrobk_vv_attributes] = uc_vyrobk_vv_attributes if has? 'UcVyrobkVV'
        hash[:prodejk_vz] = prodejk_vz if has? 'ProdejkVz'
        hash[:prodejk_vz_attributes] = prodejk_vz_attributes if has? 'ProdejkVz'
        hash[:v_dod_lst_vz] = v_dod_lst_vz if has? 'VDodLstVz'
        hash[:v_dod_lst_vz_attributes] = v_dod_lst_vz_attributes if has? 'VDodLstVz'
        hash[:p_dod_lst_vz] = p_dod_lst_vz if has? 'PDodLstVz'
        hash[:p_dod_lst_vz_attributes] = p_dod_lst_vz_attributes if has? 'PDodLstVz'

        hash
      end
    end
  end
end