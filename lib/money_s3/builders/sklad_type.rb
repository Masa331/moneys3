require 'money_s3/builders/base_builder'
require 'money_s3/builders/ucty_pohybu_type'

module MoneyS3
  module Builders
    class SkladType
      include BaseBuilder

      attr_accessor :nazev, :kod_skladu, :guid, :cenik_sklad, :platno_od, :platno_do, :minus, :neupoz, :vyber_cen, :vyber_dod, :zpusob, :prod_ceny_d, :prepocet, :ceny, :uc_vyrobk_vv, :prodejk_vz, :v_dod_lst_vz, :p_dod_lst_vz, :uc_pohyb_m, :uc_pohyb_z, :uc_pohyb_v

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('KodSkladu') << kod_skladu) if kod_skladu
        root << (Ox::Element.new('GUID') << guid) if guid
        root << (Ox::Element.new('CenikSklad') << cenik_sklad) if cenik_sklad
        root << (Ox::Element.new('PlatnoOd') << platno_od) if platno_od
        root << (Ox::Element.new('PlatnoDo') << platno_do) if platno_do
        root << (Ox::Element.new('Minus') << minus) if minus
        root << (Ox::Element.new('Neupoz') << neupoz) if neupoz
        root << (Ox::Element.new('Vyber_cen') << vyber_cen) if vyber_cen
        root << (Ox::Element.new('Vyber_dod') << vyber_dod) if vyber_dod
        root << (Ox::Element.new('Zpusob') << zpusob) if zpusob
        root << (Ox::Element.new('ProdCenyD') << prod_ceny_d) if prod_ceny_d
        root << (Ox::Element.new('Prepocet') << prepocet) if prepocet
        root << (Ox::Element.new('Ceny') << ceny) if ceny
        root << (Ox::Element.new('UcVyrobkVV') << uc_vyrobk_vv) if uc_vyrobk_vv
        root << (Ox::Element.new('ProdejkVz') << prodejk_vz) if prodejk_vz
        root << (Ox::Element.new('VDodLstVz') << v_dod_lst_vz) if v_dod_lst_vz
        root << (Ox::Element.new('PDodLstVz') << p_dod_lst_vz) if p_dod_lst_vz
        root << UctyPohybuType.new(uc_pohyb_m, 'UcPohybM').builder if uc_pohyb_m
        root << UctyPohybuType.new(uc_pohyb_z, 'UcPohybZ').builder if uc_pohyb_z
        root << UctyPohybuType.new(uc_pohyb_v, 'UcPohybV').builder if uc_pohyb_v

        root
      end
    end
  end
end