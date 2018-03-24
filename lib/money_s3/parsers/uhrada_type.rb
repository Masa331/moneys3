require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dokl_ref_type'
require 'money_s3/parsers/doklad_hraz'
require 'money_s3/parsers/valuty_hraz'
require 'money_s3/parsers/valuty_uhr'
require 'money_s3/parsers/kurz_rozd'
require 'money_s3/parsers/uhrada_pduhrada'

module MoneyS3
  module Parsers
    class UhradaType
      include BaseParser

      def prijem
        at :Prijem
      end

      def poradi
        at :Poradi
      end

      def rok_poradi
        at :RokPoradi
      end

      def datum
        at :Datum
      end

      def dat_upl_dph
        at :DatUplDPH
      end

      def castka
        at :Castka
      end

      def zpusob_uhr
        at :ZpusobUhr
      end

      def platidlo
        at :Platidlo
      end

      def doklad_uhr
        submodel_at(DoklRefType, :DokladUhr)
      end

      def doklad_hraz
        submodel_at(DokladHraz, :DokladHraz)
      end

      def valuty_hraz
        submodel_at(ValutyHraz, :ValutyHraz)
      end

      def valuty_uhr
        submodel_at(ValutyUhr, :ValutyUhr)
      end

      def kurz_rozd
        submodel_at(KurzRozd, :KurzRozd)
      end

      def seznam_pd_uhrad
        array_of_at(UhradaPduhrada, [:SeznamPDUhrad, :Uhrada_PDUhrada])
      end

      def to_h
        hash = {}

        hash[:prijem] = prijem if raw.key? :Prijem
        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:rok_poradi] = rok_poradi if raw.key? :RokPoradi
        hash[:datum] = datum if raw.key? :Datum
        hash[:dat_upl_dph] = dat_upl_dph if raw.key? :DatUplDPH
        hash[:castka] = castka if raw.key? :Castka
        hash[:zpusob_uhr] = zpusob_uhr if raw.key? :ZpusobUhr
        hash[:platidlo] = platidlo if raw.key? :Platidlo
        hash[:doklad_uhr] = doklad_uhr.to_h if raw.key? :DokladUhr
        hash[:doklad_hraz] = doklad_hraz.to_h if raw.key? :DokladHraz
        hash[:valuty_hraz] = valuty_hraz.to_h if raw.key? :ValutyHraz
        hash[:valuty_uhr] = valuty_uhr.to_h if raw.key? :ValutyUhr
        hash[:kurz_rozd] = kurz_rozd.to_h if raw.key? :KurzRozd
        hash[:seznam_pd_uhrad] = seznam_pd_uhrad.map(&:to_h) if raw.key? :SeznamPDUhrad

        hash
      end
    end
  end
end