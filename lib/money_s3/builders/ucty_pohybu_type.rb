module MoneyS3
  module Builders
    class UctyPohybuType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('UcProdejk', data[:uc_prodejk], data[:uc_prodejk_attributes]) if data.key? :uc_prodejk
        root << build_element('UcPrijemk', data[:uc_prijemk], data[:uc_prijemk_attributes]) if data.key? :uc_prijemk
        root << build_element('UcVydejky', data[:uc_vydejky], data[:uc_vydejky_attributes]) if data.key? :uc_vydejky
        root << build_element('UcVyrobky', data[:uc_vyrobky], data[:uc_vyrobky_attributes]) if data.key? :uc_vyrobky
        root << build_element('UcVDodLst', data[:uc_v_dod_lst], data[:uc_v_dod_lst_attributes]) if data.key? :uc_v_dod_lst
        root << build_element('UcPDodLst', data[:uc_p_dod_lst], data[:uc_p_dod_lst_attributes]) if data.key? :uc_p_dod_lst
        root << build_element('UcManko', data[:uc_manko], data[:uc_manko_attributes]) if data.key? :uc_manko
        root << build_element('UcPreb', data[:uc_preb], data[:uc_preb_attributes]) if data.key? :uc_preb

        root
      end
    end
  end
end