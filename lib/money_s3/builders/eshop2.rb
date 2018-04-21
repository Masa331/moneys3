module MoneyS3
  module Builders
    class Eshop2
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('IN_Export', data[:in_export]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed]) if data.key? :in_changed
        root << build_element('IN_Id', data[:in_id]) if data.key? :in_id
        root << build_element('IN_Jmeno', data[:in_jmeno]) if data.key? :in_jmeno
        root << build_element('IN_Heslo', data[:in_heslo]) if data.key? :in_heslo
        root << build_element('IN_Dealer', data[:in_dealer]) if data.key? :in_dealer
        root << build_element('IN_DSkup', data[:in_d_skup]) if data.key? :in_d_skup
        root << build_element('IN_IndSlev', data[:in_ind_slev]) if data.key? :in_ind_slev
        root << build_element('IN_Soukrom', data[:in_soukrom]) if data.key? :in_soukrom
        root << build_element('IN_DSkupZkratka', data[:in_d_skup_zkratka]) if data.key? :in_d_skup_zkratka

        root
      end
    end
  end
end