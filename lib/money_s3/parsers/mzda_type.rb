require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zamestnanec_type'
require 'money_s3/parsers/nepritomnost_type'
require 'money_s3/parsers/mz_priplatek'

module MoneyS3
  module Parsers
    class MzdaType
      include BaseParser

      def mesic
        at 'Mesic'
      end

      def rok
        at 'Rok'
      end

      def prac_dnu
        at 'PracDnu'
      end

      def prac_hod
        at 'PracHod'
      end

      def odpr_dnu
        at 'OdprDnu'
      end

      def odpr_hod
        at 'OdprHod'
      end

      def odpr_sv_dnu
        at 'OdprSvDnu'
      end

      def odpr_sv_hod
        at 'OdprSvHod'
      end

      def zamestnanec
        submodel_at(ZamestnanecType, 'Zamestnanec')
      end

      def seznam_nepritomnosti
        array_of_at(NepritomnostType, ['SeznamNepritomnosti', 'Nepritomnost'])
      end

      def seznam_mz_priplatku
        array_of_at(MzPriplatek, ['SeznamMzPriplatku', 'MzPriplatek'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:mesic] = mesic if has? 'Mesic'
        hash[:rok] = rok if has? 'Rok'
        hash[:prac_dnu] = prac_dnu if has? 'PracDnu'
        hash[:prac_hod] = prac_hod if has? 'PracHod'
        hash[:odpr_dnu] = odpr_dnu if has? 'OdprDnu'
        hash[:odpr_hod] = odpr_hod if has? 'OdprHod'
        hash[:odpr_sv_dnu] = odpr_sv_dnu if has? 'OdprSvDnu'
        hash[:odpr_sv_hod] = odpr_sv_hod if has? 'OdprSvHod'
        hash[:zamestnanec] = zamestnanec.to_h if has? 'Zamestnanec'
        hash[:seznam_nepritomnosti] = seznam_nepritomnosti.map(&:to_h) if has? 'SeznamNepritomnosti'
        hash[:seznam_mz_priplatku] = seznam_mz_priplatku.map(&:to_h) if has? 'SeznamMzPriplatku'

        hash
      end
    end
  end
end