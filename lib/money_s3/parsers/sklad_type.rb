module MoneyS3
  module Parsers
    class SkladType
      include ParserCore::BaseParser

      def nazev
        at 'Nazev'
      end

      def nazev_attributes
        attributes_at 'Nazev'
      end

      def kod_skladu
        at 'KodSkladu'
      end

      def kod_skladu_attributes
        attributes_at 'KodSkladu'
      end

      def guid
        at 'GUID'
      end

      def guid_attributes
        attributes_at 'GUID'
      end

      def cenik_sklad
        at 'CenikSklad'
      end

      def cenik_sklad_attributes
        attributes_at 'CenikSklad'
      end

      def platno_od
        at 'PlatnoOd'
      end

      def platno_od_attributes
        attributes_at 'PlatnoOd'
      end

      def platno_do
        at 'PlatnoDo'
      end

      def platno_do_attributes
        attributes_at 'PlatnoDo'
      end

      def minus
        at 'Minus'
      end

      def minus_attributes
        attributes_at 'Minus'
      end

      def neupoz
        at 'Neupoz'
      end

      def neupoz_attributes
        attributes_at 'Neupoz'
      end

      def vyber_cen
        at 'Vyber_cen'
      end

      def vyber_cen_attributes
        attributes_at 'Vyber_cen'
      end

      def vyber_dod
        at 'Vyber_dod'
      end

      def vyber_dod_attributes
        attributes_at 'Vyber_dod'
      end

      def zpusob
        at 'Zpusob'
      end

      def zpusob_attributes
        attributes_at 'Zpusob'
      end

      def prod_ceny_d
        at 'ProdCenyD'
      end

      def prod_ceny_d_attributes
        attributes_at 'ProdCenyD'
      end

      def prepocet
        at 'Prepocet'
      end

      def prepocet_attributes
        attributes_at 'Prepocet'
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

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:nazev_attributes] = nazev_attributes if has? 'Nazev'
        hash[:kod_skladu] = kod_skladu if has? 'KodSkladu'
        hash[:kod_skladu_attributes] = kod_skladu_attributes if has? 'KodSkladu'
        hash[:guid] = guid if has? 'GUID'
        hash[:guid_attributes] = guid_attributes if has? 'GUID'
        hash[:cenik_sklad] = cenik_sklad if has? 'CenikSklad'
        hash[:cenik_sklad_attributes] = cenik_sklad_attributes if has? 'CenikSklad'
        hash[:platno_od] = platno_od if has? 'PlatnoOd'
        hash[:platno_od_attributes] = platno_od_attributes if has? 'PlatnoOd'
        hash[:platno_do] = platno_do if has? 'PlatnoDo'
        hash[:platno_do_attributes] = platno_do_attributes if has? 'PlatnoDo'
        hash[:minus] = minus if has? 'Minus'
        hash[:minus_attributes] = minus_attributes if has? 'Minus'
        hash[:neupoz] = neupoz if has? 'Neupoz'
        hash[:neupoz_attributes] = neupoz_attributes if has? 'Neupoz'
        hash[:vyber_cen] = vyber_cen if has? 'Vyber_cen'
        hash[:vyber_cen_attributes] = vyber_cen_attributes if has? 'Vyber_cen'
        hash[:vyber_dod] = vyber_dod if has? 'Vyber_dod'
        hash[:vyber_dod_attributes] = vyber_dod_attributes if has? 'Vyber_dod'
        hash[:zpusob] = zpusob if has? 'Zpusob'
        hash[:zpusob_attributes] = zpusob_attributes if has? 'Zpusob'
        hash[:prod_ceny_d] = prod_ceny_d if has? 'ProdCenyD'
        hash[:prod_ceny_d_attributes] = prod_ceny_d_attributes if has? 'ProdCenyD'
        hash[:prepocet] = prepocet if has? 'Prepocet'
        hash[:prepocet_attributes] = prepocet_attributes if has? 'Prepocet'
        hash[:konfigurace] = konfigurace.to_h if has? 'konfigurace'
        hash[:definice_ceny] = definice_ceny.to_h if has? 'definiceCeny'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:ceny_attributes] = ceny_attributes if has? 'Ceny'
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