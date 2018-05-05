module MoneyS3
  module Parsers
    class ObdobiDPH2
      include ParserCore::BaseParser

      def datum_od
        at 'DatumOd'
      end

      def poh_d_1
        at 'PohD_1'
      end

      def poh_d_2
        at 'PohD_2'
      end

      def poh_d_3
        at 'PohD_3'
      end

      def poh_d_4
        at 'PohD_4'
      end

      def poh_d_5
        at 'PohD_5'
      end

      def poh_d_6
        at 'PohD_6'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:datum_od] = datum_od if has? 'DatumOd'
        hash[:poh_d_1] = poh_d_1 if has? 'PohD_1'
        hash[:poh_d_2] = poh_d_2 if has? 'PohD_2'
        hash[:poh_d_3] = poh_d_3 if has? 'PohD_3'
        hash[:poh_d_4] = poh_d_4 if has? 'PohD_4'
        hash[:poh_d_5] = poh_d_5 if has? 'PohD_5'
        hash[:poh_d_6] = poh_d_6 if has? 'PohD_6'

        hash
      end
    end
  end
end