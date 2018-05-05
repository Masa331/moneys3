module MoneyS3
  module Parsers
    module Groups
      module Konfigurace
        def druh_zas
          at 'Druh_zas'
        end

        def cinnosti
          at 'Cinnosti'
        end

        def sdph_nakup
          at 'SDPH_Nakup'
        end

        def sdph_prod
          at 'SDPH_Prod'
        end

        def zvl_rezim
          at 'ZvlRezim'
        end

        def zvl_dph
          at 'ZvlDPH'
        end

        def rezim_eet
          at 'RezimEET'
        end

        def ev_min
          at 'Ev_Min'
        end

        def ev_max
          at 'Ev_Max'
        end

        def minimum
          at 'Minimum'
        end

        def maximum
          at 'Maximum'
        end

        def uc_pr_j_nakup
          at 'UcPrJNakup'
        end

        def uc_pr_j_prode
          at 'UcPrJProde'
        end

        def uc_pr_p_nakup
          at 'UcPrPNakup'
        end

        def uc_pr_p_prode
          at 'UcPrPProde'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:druh_zas] = druh_zas if has? 'Druh_zas'
          hash[:cinnosti] = cinnosti if has? 'Cinnosti'
          hash[:sdph_nakup] = sdph_nakup if has? 'SDPH_Nakup'
          hash[:sdph_prod] = sdph_prod if has? 'SDPH_Prod'
          hash[:zvl_rezim] = zvl_rezim if has? 'ZvlRezim'
          hash[:zvl_dph] = zvl_dph if has? 'ZvlDPH'
          hash[:rezim_eet] = rezim_eet if has? 'RezimEET'
          hash[:ev_min] = ev_min if has? 'Ev_Min'
          hash[:ev_max] = ev_max if has? 'Ev_Max'
          hash[:minimum] = minimum if has? 'Minimum'
          hash[:maximum] = maximum if has? 'Maximum'
          hash[:uc_pr_j_nakup] = uc_pr_j_nakup if has? 'UcPrJNakup'
          hash[:uc_pr_j_prode] = uc_pr_j_prode if has? 'UcPrJProde'
          hash[:uc_pr_p_nakup] = uc_pr_p_nakup if has? 'UcPrPNakup'
          hash[:uc_pr_p_prode] = uc_pr_p_prode if has? 'UcPrPProde'

          hash
        end
      end
    end
  end
end