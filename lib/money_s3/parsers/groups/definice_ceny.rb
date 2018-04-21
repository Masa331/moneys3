module MoneyS3
  module Parsers
    module Groups
      module DefiniceCeny
        def sdph
          at 'SDPH'
        end

        def zaok
          at 'Zaok'
        end

        def zpusob_zao
          at 'ZpusobZao'
        end

        def vych_a
          at 'VychA'
        end

        def zpusob_zm_a
          at 'ZpusobZmA'
        end

        def vych_b
          at 'VychB'
        end

        def zpusob_zm_b
          at 'ZpusobZmB'
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

        def to_h_with_attrs
          hash = HashWithAttributes.new({}, attributes)

          hash[:sdph] = sdph if has? 'SDPH'
          hash[:zaok] = zaok if has? 'Zaok'
          hash[:zpusob_zao] = zpusob_zao if has? 'ZpusobZao'
          hash[:vych_a] = vych_a if has? 'VychA'
          hash[:zpusob_zm_a] = zpusob_zm_a if has? 'ZpusobZmA'
          hash[:vych_b] = vych_b if has? 'VychB'
          hash[:zpusob_zm_b] = zpusob_zm_b if has? 'ZpusobZmB'
          hash[:sleva1] = sleva1.to_h_with_attrs if has? 'Sleva1'
          hash[:sleva2] = sleva2.to_h_with_attrs if has? 'Sleva2'
          hash[:sleva3] = sleva3.to_h_with_attrs if has? 'Sleva3'
          hash[:sleva4] = sleva4.to_h_with_attrs if has? 'Sleva4'
          hash[:sleva5] = sleva5.to_h_with_attrs if has? 'Sleva5'

          hash
        end
      end
    end
  end
end