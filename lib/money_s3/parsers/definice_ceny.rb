module MoneyS3
  module Parsers
    class DefiniceCeny
      include ParserCore::BaseParser

      def sdph
        at 'SDPH'
      end

      def sdph_attributes
        attributes_at 'SDPH'
      end

      def zaok
        at 'Zaok'
      end

      def zaok_attributes
        attributes_at 'Zaok'
      end

      def zpusob_zao
        at 'ZpusobZao'
      end

      def zpusob_zao_attributes
        attributes_at 'ZpusobZao'
      end

      def vych_a
        at 'VychA'
      end

      def vych_a_attributes
        attributes_at 'VychA'
      end

      def zpusob_zm_a
        at 'ZpusobZmA'
      end

      def zpusob_zm_a_attributes
        attributes_at 'ZpusobZmA'
      end

      def vych_b
        at 'VychB'
      end

      def vych_b_attributes
        attributes_at 'VychB'
      end

      def zpusob_zm_b
        at 'ZpusobZmB'
      end

      def zpusob_zm_b_attributes
        attributes_at 'ZpusobZmB'
      end

      def sleva1
        submodel_at(SlevaType, 'Sleva1')
      end

      def sleva2
        submodel_at(SlevaType, 'Sleva2')
      end

      def sleva3
        submodel_at(SlevaType, 'Sleva3')
      end

      def sleva4
        submodel_at(SlevaType, 'Sleva4')
      end

      def sleva5
        submodel_at(SlevaType, 'Sleva5')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:sdph] = sdph if has? 'SDPH'
        hash[:sdph_attributes] = sdph_attributes if has? 'SDPH'
        hash[:zaok] = zaok if has? 'Zaok'
        hash[:zaok_attributes] = zaok_attributes if has? 'Zaok'
        hash[:zpusob_zao] = zpusob_zao if has? 'ZpusobZao'
        hash[:zpusob_zao_attributes] = zpusob_zao_attributes if has? 'ZpusobZao'
        hash[:vych_a] = vych_a if has? 'VychA'
        hash[:vych_a_attributes] = vych_a_attributes if has? 'VychA'
        hash[:zpusob_zm_a] = zpusob_zm_a if has? 'ZpusobZmA'
        hash[:zpusob_zm_a_attributes] = zpusob_zm_a_attributes if has? 'ZpusobZmA'
        hash[:vych_b] = vych_b if has? 'VychB'
        hash[:vych_b_attributes] = vych_b_attributes if has? 'VychB'
        hash[:zpusob_zm_b] = zpusob_zm_b if has? 'ZpusobZmB'
        hash[:zpusob_zm_b_attributes] = zpusob_zm_b_attributes if has? 'ZpusobZmB'
        hash[:sleva1] = sleva1.to_h if has? 'Sleva1'
        hash[:sleva2] = sleva2.to_h if has? 'Sleva2'
        hash[:sleva3] = sleva3.to_h if has? 'Sleva3'
        hash[:sleva4] = sleva4.to_h if has? 'Sleva4'
        hash[:sleva5] = sleva5.to_h if has? 'Sleva5'

        hash
      end
    end
  end
end