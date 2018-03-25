require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/ucty_pohybu_type'

module MoneyS3
  module Parsers
    class Sklad
      include BaseParser

      def nazev
        at 'Nazev'
      end

      def kod_skladu
        at 'KodSkladu'
      end

      def guid
        at 'GUID'
      end

      def cenik_sklad
        at 'CenikSklad'
      end

      def platno_od
        at 'PlatnoOd'
      end

      def platno_do
        at 'PlatnoDo'
      end

      def minus
        at 'Minus'
      end

      def neupoz
        at 'Neupoz'
      end

      def vyber_cen
        at 'Vyber_cen'
      end

      def vyber_dod
        at 'Vyber_dod'
      end

      def zpusob
        at 'Zpusob'
      end

      def prod_ceny_d
        at 'ProdCenyD'
      end

      def prepocet
        at 'Prepocet'
      end

      def ceny
        at 'Ceny'
      end

      def uc_vyrobk_vv
        at 'UcVyrobkVV'
      end

      def prodejk_vz
        at 'ProdejkVz'
      end

      def v_dod_lst_vz
        at 'VDodLstVz'
      end

      def p_dod_lst_vz
        at 'PDodLstVz'
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

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:nazev] = nazev if has? 'Nazev'
        hash[:kod_skladu] = kod_skladu if has? 'KodSkladu'
        hash[:guid] = guid if has? 'GUID'
        hash[:cenik_sklad] = cenik_sklad if has? 'CenikSklad'
        hash[:platno_od] = platno_od if has? 'PlatnoOd'
        hash[:platno_do] = platno_do if has? 'PlatnoDo'
        hash[:minus] = minus if has? 'Minus'
        hash[:neupoz] = neupoz if has? 'Neupoz'
        hash[:vyber_cen] = vyber_cen if has? 'Vyber_cen'
        hash[:vyber_dod] = vyber_dod if has? 'Vyber_dod'
        hash[:zpusob] = zpusob if has? 'Zpusob'
        hash[:prod_ceny_d] = prod_ceny_d if has? 'ProdCenyD'
        hash[:prepocet] = prepocet if has? 'Prepocet'
        hash[:ceny] = ceny if has? 'Ceny'
        hash[:uc_vyrobk_vv] = uc_vyrobk_vv if has? 'UcVyrobkVV'
        hash[:prodejk_vz] = prodejk_vz if has? 'ProdejkVz'
        hash[:v_dod_lst_vz] = v_dod_lst_vz if has? 'VDodLstVz'
        hash[:p_dod_lst_vz] = p_dod_lst_vz if has? 'PDodLstVz'
        hash[:uc_pohyb_m] = uc_pohyb_m.to_h if has? 'UcPohybM'
        hash[:uc_pohyb_z] = uc_pohyb_z.to_h if has? 'UcPohybZ'
        hash[:uc_pohyb_v] = uc_pohyb_v.to_h if has? 'UcPohybV'

        hash
      end
    end
  end
end