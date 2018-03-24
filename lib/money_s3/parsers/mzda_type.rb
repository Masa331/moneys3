require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zamestnanec_type'
require 'money_s3/parsers/nepritomnost_type'
require 'money_s3/parsers/mz_priplatek'

module MoneyS3
  module Parsers
    class MzdaType
      include BaseParser

      def mesic
        at :Mesic
      end

      def rok
        at :Rok
      end

      def prac_dnu
        at :PracDnu
      end

      def prac_hod
        at :PracHod
      end

      def odpr_dnu
        at :OdprDnu
      end

      def odpr_hod
        at :OdprHod
      end

      def odpr_sv_dnu
        at :OdprSvDnu
      end

      def odpr_sv_hod
        at :OdprSvHod
      end

      def zamestnanec
        submodel_at(ZamestnanecType, :Zamestnanec)
      end

      def seznam_nepritomnosti
        array_of_at(NepritomnostType, [:SeznamNepritomnosti, :Nepritomnost])
      end

      def seznam_mz_priplatku
        array_of_at(MzPriplatek, [:SeznamMzPriplatku, :MzPriplatek])
      end

      def to_h
        hash = {}

        hash[:mesic] = mesic if raw.key? :Mesic
        hash[:rok] = rok if raw.key? :Rok
        hash[:prac_dnu] = prac_dnu if raw.key? :PracDnu
        hash[:prac_hod] = prac_hod if raw.key? :PracHod
        hash[:odpr_dnu] = odpr_dnu if raw.key? :OdprDnu
        hash[:odpr_hod] = odpr_hod if raw.key? :OdprHod
        hash[:odpr_sv_dnu] = odpr_sv_dnu if raw.key? :OdprSvDnu
        hash[:odpr_sv_hod] = odpr_sv_hod if raw.key? :OdprSvHod
        hash[:zamestnanec] = zamestnanec.to_h if raw.key? :Zamestnanec
        hash[:seznam_nepritomnosti] = seznam_nepritomnosti.map(&:to_h) if raw.key? :SeznamNepritomnosti
        hash[:seznam_mz_priplatku] = seznam_mz_priplatku.map(&:to_h) if raw.key? :SeznamMzPriplatku

        hash
      end
    end
  end
end