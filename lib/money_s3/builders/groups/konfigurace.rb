module MoneyS3
  module Builders
    module Groups
      module Konfigurace
        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('Druh_zas', data[:druh_zas], data[:druh_zas_attributes]) if data.key? :druh_zas
          root << build_element('Cinnosti', data[:cinnosti], data[:cinnosti_attributes]) if data.key? :cinnosti
          root << build_element('SDPH_Nakup', data[:sdph_nakup], data[:sdph_nakup_attributes]) if data.key? :sdph_nakup
          root << build_element('SDPH_Prod', data[:sdph_prod], data[:sdph_prod_attributes]) if data.key? :sdph_prod
          root << build_element('ZvlRezim', data[:zvl_rezim], data[:zvl_rezim_attributes]) if data.key? :zvl_rezim
          root << build_element('ZvlDPH', data[:zvl_dph], data[:zvl_dph_attributes]) if data.key? :zvl_dph
          root << build_element('RezimEET', data[:rezim_eet], data[:rezim_eet_attributes]) if data.key? :rezim_eet
          root << build_element('Ev_Min', data[:ev_min], data[:ev_min_attributes]) if data.key? :ev_min
          root << build_element('Ev_Max', data[:ev_max], data[:ev_max_attributes]) if data.key? :ev_max
          root << build_element('Minimum', data[:minimum], data[:minimum_attributes]) if data.key? :minimum
          root << build_element('Maximum', data[:maximum], data[:maximum_attributes]) if data.key? :maximum
          root << build_element('UcPrJNakup', data[:uc_pr_j_nakup], data[:uc_pr_j_nakup_attributes]) if data.key? :uc_pr_j_nakup
          root << build_element('UcPrJProde', data[:uc_pr_j_prode], data[:uc_pr_j_prode_attributes]) if data.key? :uc_pr_j_prode
          root << build_element('UcPrPNakup', data[:uc_pr_p_nakup], data[:uc_pr_p_nakup_attributes]) if data.key? :uc_pr_p_nakup
          root << build_element('UcPrPProde', data[:uc_pr_p_prode], data[:uc_pr_p_prode_attributes]) if data.key? :uc_pr_p_prode

          root
        end
      end
    end
  end
end