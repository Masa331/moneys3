require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/konfigurace'
require 'money_s3/parsers/stav_zasoby_type'
require 'money_s3/parsers/ucty_pohybu_type'
require 'money_s3/parsers/eshop_zasoba_type'
require 'money_s3/parsers/km_karta_type'
require 'money_s3/parsers/sklad_type'
require 'money_s3/parsers/skupina_zasob_type'
require 'money_s3/parsers/firma_type'
require 'money_s3/parsers/vlajky'
require 'money_s3/parsers/pc'
require 'money_s3/parsers/alternativa_prislusenstvi_type'
require 'money_s3/parsers/alternativa_prislusenstvi_type'

module MoneyS3
  module Parsers
    class Zasoba
      include BaseParser

      def nak_cena
        at :Nak_Cena
      end

      def posl_n_cen
        at :Posl_N_Cen
      end

      def posl_nak
        at :Posl_Nak
      end

      def posl_prod
        at :Posl_Prod
      end

      def pozn
        at :Pozn
      end

      def skl_ucet
        at :SklUcet
      end

      def www_popis
        at :WWWPopis
      end

      def www_popis2
        at :WWWPopis2
      end

      def vyrobce
        at :Vyrobce
      end

      def sleva
        at :Sleva
      end

      def novinka
        at :Novinka
      end

      def pripravuje
        at :Pripravuje
      end

      def vyprodej
        at :Vyprodej
      end

      def zakaz_prode
        at :ZakazProde
      end

      def naz_podskup
        at :NazPodskup
      end

      def nomenklatu
        at :Nomenklatu
      end

      def url_zbozi
        at :URL_Zbozi
      end

      def v_sleva
        at :VSleva
      end

      def v_akce
        at :VAkce
      end

      def v_novinka
        at :VNovinka
      end

      def prva_strana
        at :PrvaStrana
      end

      def platnost_do
        at :PlatnostDo
      end

      def uc_vyrobk_v
        at :UcVyrobkV
      end

      def dat_inv
        at :DatInv
      end

      def mn_inv
        at :MnInv
      end

      def konfigurace
        submodel_at(Konfigurace, :konfigurace)
      end

      def stav_zasoby
        submodel_at(StavZasobyType, :StavZasoby)
      end

      def uc_pohyb
        submodel_at(UctyPohybuType, :UcPohyb)
      end

      def eshop
        submodel_at(EshopZasobaType, :eshop)
      end

      def km_karta
        submodel_at(KmKartaType, :KmKarta)
      end

      def sklad
        submodel_at(SkladType, :Sklad)
      end

      def skupina
        submodel_at(SkupinaZasobType, :Skupina)
      end

      def posl_dod
        submodel_at(FirmaType, :Posl_Dod)
      end

      def vlajky
        submodel_at(Vlajky, :Vlajky)
      end

      def pc
        array_of_at(PC, [:PC])
      end

      def seznam_alternativ
        array_of_at(AlternativaPrislusenstviType, [:SeznamAlternativ, :Alternativa])
      end

      def seznam_prislusenstvi
        array_of_at(AlternativaPrislusenstviType, [:SeznamPrislusenstvi, :Prislusenstvi])
      end

      def dokumenty
        array_of_at(String, [:Dokumenty, :Dokument])
      end

      def to_h
        { nak_cena: nak_cena,
          posl_n_cen: posl_n_cen,
          posl_nak: posl_nak,
          posl_prod: posl_prod,
          pozn: pozn,
          skl_ucet: skl_ucet,
          www_popis: www_popis,
          www_popis2: www_popis2,
          vyrobce: vyrobce,
          sleva: sleva,
          novinka: novinka,
          pripravuje: pripravuje,
          vyprodej: vyprodej,
          zakaz_prode: zakaz_prode,
          naz_podskup: naz_podskup,
          nomenklatu: nomenklatu,
          url_zbozi: url_zbozi,
          v_sleva: v_sleva,
          v_akce: v_akce,
          v_novinka: v_novinka,
          prva_strana: prva_strana,
          platnost_do: platnost_do,
          uc_vyrobk_v: uc_vyrobk_v,
          dat_inv: dat_inv,
          mn_inv: mn_inv,
          konfigurace: konfigurace.to_h,
          stav_zasoby: stav_zasoby.to_h,
          uc_pohyb: uc_pohyb.to_h,
          eshop: eshop.to_h,
          km_karta: km_karta.to_h,
          sklad: sklad.to_h,
          skupina: skupina.to_h,
          posl_dod: posl_dod.to_h,
          vlajky: vlajky.to_h,
          pc: pc.map(&:to_h),
          seznam_alternativ: seznam_alternativ.map(&:to_h),
          seznam_prislusenstvi: seznam_prislusenstvi.map(&:to_h),
          dokumenty: dokumenty
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end