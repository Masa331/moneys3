module MoneyS3
  module Builders
    module Groups
      module Konfigurace
        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('Druh_zas', data[:druh_zas]) if data.key? :druh_zas
          root << build_element('Cinnosti', data[:cinnosti]) if data.key? :cinnosti
          root << build_element('SDPH_Nakup', data[:sdph_nakup]) if data.key? :sdph_nakup
          root << build_element('SDPH_Prod', data[:sdph_prod]) if data.key? :sdph_prod
          root << build_element('ZvlRezim', data[:zvl_rezim]) if data.key? :zvl_rezim
          root << build_element('ZvlDPH', data[:zvl_dph]) if data.key? :zvl_dph
          root << build_element('RezimEET', data[:rezim_eet]) if data.key? :rezim_eet
          root << build_element('Ev_Min', data[:ev_min]) if data.key? :ev_min
          root << build_element('Ev_Max', data[:ev_max]) if data.key? :ev_max
          root << build_element('Minimum', data[:minimum]) if data.key? :minimum
          root << build_element('Maximum', data[:maximum]) if data.key? :maximum
          root << build_element('UcPrJNakup', data[:uc_pr_j_nakup]) if data.key? :uc_pr_j_nakup
          root << build_element('UcPrJProde', data[:uc_pr_j_prode]) if data.key? :uc_pr_j_prode
          root << build_element('UcPrPNakup', data[:uc_pr_p_nakup]) if data.key? :uc_pr_p_nakup
          root << build_element('UcPrPProde', data[:uc_pr_p_prode]) if data.key? :uc_pr_p_prode

          root
        end
      end
    end
  end
end