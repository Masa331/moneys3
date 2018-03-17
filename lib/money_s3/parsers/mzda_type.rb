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
        { mesic: mesic,
          rok: rok,
          prac_dnu: prac_dnu,
          prac_hod: prac_hod,
          odpr_dnu: odpr_dnu,
          odpr_hod: odpr_hod,
          odpr_sv_dnu: odpr_sv_dnu,
          odpr_sv_hod: odpr_sv_hod,
          zamestnanec: zamestnanec.to_h,
          seznam_nepritomnosti: seznam_nepritomnosti.map(&:to_h),
          seznam_mz_priplatku: seznam_mz_priplatku.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end