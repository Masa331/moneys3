require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/ucty_pohybu_type'

module MoneyS3
  module Parsers
    class SkladType
      include BaseParser

      def nazev
        at :Nazev
      end

      def kod_skladu
        at :KodSkladu
      end

      def guid
        at :GUID
      end

      def cenik_sklad
        at :CenikSklad
      end

      def platno_od
        at :PlatnoOd
      end

      def platno_do
        at :PlatnoDo
      end

      def minus
        at :Minus
      end

      def neupoz
        at :Neupoz
      end

      def vyber_cen
        at :Vyber_cen
      end

      def vyber_dod
        at :Vyber_dod
      end

      def zpusob
        at :Zpusob
      end

      def prod_ceny_d
        at :ProdCenyD
      end

      def prepocet
        at :Prepocet
      end

      def ceny
        at :Ceny
      end

      def uc_vyrobk_vv
        at :UcVyrobkVV
      end

      def prodejk_vz
        at :ProdejkVz
      end

      def v_dod_lst_vz
        at :VDodLstVz
      end

      def p_dod_lst_vz
        at :PDodLstVz
      end

      def uc_pohyb_m
        submodel_at(UctyPohybuType, :UcPohybM)
      end

      def uc_pohyb_z
        submodel_at(UctyPohybuType, :UcPohybZ)
      end

      def uc_pohyb_v
        submodel_at(UctyPohybuType, :UcPohybV)
      end

      def to_h
        hash = {}

        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:kod_skladu] = kod_skladu if raw.key? :KodSkladu
        hash[:guid] = guid if raw.key? :GUID
        hash[:cenik_sklad] = cenik_sklad if raw.key? :CenikSklad
        hash[:platno_od] = platno_od if raw.key? :PlatnoOd
        hash[:platno_do] = platno_do if raw.key? :PlatnoDo
        hash[:minus] = minus if raw.key? :Minus
        hash[:neupoz] = neupoz if raw.key? :Neupoz
        hash[:vyber_cen] = vyber_cen if raw.key? :Vyber_cen
        hash[:vyber_dod] = vyber_dod if raw.key? :Vyber_dod
        hash[:zpusob] = zpusob if raw.key? :Zpusob
        hash[:prod_ceny_d] = prod_ceny_d if raw.key? :ProdCenyD
        hash[:prepocet] = prepocet if raw.key? :Prepocet
        hash[:ceny] = ceny if raw.key? :Ceny
        hash[:uc_vyrobk_vv] = uc_vyrobk_vv if raw.key? :UcVyrobkVV
        hash[:prodejk_vz] = prodejk_vz if raw.key? :ProdejkVz
        hash[:v_dod_lst_vz] = v_dod_lst_vz if raw.key? :VDodLstVz
        hash[:p_dod_lst_vz] = p_dod_lst_vz if raw.key? :PDodLstVz
        hash[:uc_pohyb_m] = uc_pohyb_m.to_h if raw.key? :UcPohybM
        hash[:uc_pohyb_z] = uc_pohyb_z.to_h if raw.key? :UcPohybZ
        hash[:uc_pohyb_v] = uc_pohyb_v.to_h if raw.key? :UcPohybV

        hash
      end
    end
  end
end