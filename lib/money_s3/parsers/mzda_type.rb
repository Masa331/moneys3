module MoneyS3
  module Parsers
    class MzdaType
      include ParserCore::BaseParser

      def zamestnanec
        submodel_at(ZamestnanecType, 'Zamestnanec')
      end

      def mesic
        at 'Mesic'
      end

      def mesic_attributes
        attributes_at 'Mesic'
      end

      def rok
        at 'Rok'
      end

      def rok_attributes
        attributes_at 'Rok'
      end

      def prac_dnu
        at 'PracDnu'
      end

      def prac_dnu_attributes
        attributes_at 'PracDnu'
      end

      def prac_hod
        at 'PracHod'
      end

      def prac_hod_attributes
        attributes_at 'PracHod'
      end

      def odpr_dnu
        at 'OdprDnu'
      end

      def odpr_dnu_attributes
        attributes_at 'OdprDnu'
      end

      def odpr_hod
        at 'OdprHod'
      end

      def odpr_hod_attributes
        attributes_at 'OdprHod'
      end

      def odpr_sv_dnu
        at 'OdprSvDnu'
      end

      def odpr_sv_dnu_attributes
        attributes_at 'OdprSvDnu'
      end

      def odpr_sv_hod
        at 'OdprSvHod'
      end

      def odpr_sv_hod_attributes
        attributes_at 'OdprSvHod'
      end

      def seznam_nepritomnosti
        array_of_at(NepritomnostType, ['SeznamNepritomnosti', 'Nepritomnost'])
      end

      def seznam_mz_priplatku
        array_of_at(MzPriplatek, ['SeznamMzPriplatku', 'MzPriplatek'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zamestnanec] = zamestnanec.to_h if has? 'Zamestnanec'
        hash[:mesic] = mesic if has? 'Mesic'
        hash[:mesic_attributes] = mesic_attributes if has? 'Mesic'
        hash[:rok] = rok if has? 'Rok'
        hash[:rok_attributes] = rok_attributes if has? 'Rok'
        hash[:prac_dnu] = prac_dnu if has? 'PracDnu'
        hash[:prac_dnu_attributes] = prac_dnu_attributes if has? 'PracDnu'
        hash[:prac_hod] = prac_hod if has? 'PracHod'
        hash[:prac_hod_attributes] = prac_hod_attributes if has? 'PracHod'
        hash[:odpr_dnu] = odpr_dnu if has? 'OdprDnu'
        hash[:odpr_dnu_attributes] = odpr_dnu_attributes if has? 'OdprDnu'
        hash[:odpr_hod] = odpr_hod if has? 'OdprHod'
        hash[:odpr_hod_attributes] = odpr_hod_attributes if has? 'OdprHod'
        hash[:odpr_sv_dnu] = odpr_sv_dnu if has? 'OdprSvDnu'
        hash[:odpr_sv_dnu_attributes] = odpr_sv_dnu_attributes if has? 'OdprSvDnu'
        hash[:odpr_sv_hod] = odpr_sv_hod if has? 'OdprSvHod'
        hash[:odpr_sv_hod_attributes] = odpr_sv_hod_attributes if has? 'OdprSvHod'
        hash[:seznam_nepritomnosti] = seznam_nepritomnosti.map(&:to_h) if has? 'SeznamNepritomnosti'
        hash[:seznam_mz_priplatku] = seznam_mz_priplatku.map(&:to_h) if has? 'SeznamMzPriplatku'

        hash
      end
    end
  end
end