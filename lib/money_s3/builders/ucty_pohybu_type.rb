require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UctyPohybuType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('UcProdejk', data[:uc_prodejk]) if data.key? :uc_prodejk
        root << build_element('UcPrijemk', data[:uc_prijemk]) if data.key? :uc_prijemk
        root << build_element('UcVydejky', data[:uc_vydejky]) if data.key? :uc_vydejky
        root << build_element('UcVyrobky', data[:uc_vyrobky]) if data.key? :uc_vyrobky
        root << build_element('UcVDodLst', data[:uc_v_dod_lst]) if data.key? :uc_v_dod_lst
        root << build_element('UcPDodLst', data[:uc_p_dod_lst]) if data.key? :uc_p_dod_lst
        root << build_element('UcManko', data[:uc_manko]) if data.key? :uc_manko
        root << build_element('UcPreb', data[:uc_preb]) if data.key? :uc_preb

        root
      end
    end
  end
end