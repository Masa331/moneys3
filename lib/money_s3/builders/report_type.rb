module MoneyS3
  module Builders
    class ReportType < MessageRootType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        super.nodes.each do |n|
          root << n
        end

        if data.key? :control
          root << Control.new('Control', data[:control]).builder
        end
        if data.key? :seznam_firem
          element = Ox::Element.new('SeznamFirem')
          data[:seznam_firem].each { |i| element << MsgFirmaType.new('Firma', i).builder }
          root << element
        end
        if data.key? :seznam_km_karta
          element = Ox::Element.new('SeznamKmKarta')
          data[:seznam_km_karta].each { |i| element << MsgKmKartaType.new('KmKarta', i).builder }
          root << element
        end
        if data.key? :seznam_zasoba
          element = Ox::Element.new('SeznamZasoba')
          data[:seznam_zasoba].each { |i| element << MsgZasobaType.new('Zasoba', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_prij
          element = Ox::Element.new('SeznamFaktPrij')
          data[:seznam_fakt_prij].each { |i| element << MsgFaktType.new('FaktPrij', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_vyd
          element = Ox::Element.new('SeznamFaktVyd')
          data[:seznam_fakt_vyd].each { |i| element << MsgFaktType.new('FaktVyd', i).builder }
          root << element
        end
        if data.key? :seznam_obj_prij
          element = Ox::Element.new('SeznamObjPrij')
          data[:seznam_obj_prij].each { |i| element << MsgObjType.new('ObjPrij', i).builder }
          root << element
        end
        if data.key? :seznam_obj_vyd
          element = Ox::Element.new('SeznamObjVyd')
          data[:seznam_obj_vyd].each { |i| element << MsgObjType.new('ObjVyd', i).builder }
          root << element
        end
        if data.key? :seznam_nab_prij
          element = Ox::Element.new('SeznamNabPrij')
          data[:seznam_nab_prij].each { |i| element << MsgObjType.new('NabPrij', i).builder }
          root << element
        end
        if data.key? :seznam_nab_vyd
          element = Ox::Element.new('SeznamNabVyd')
          data[:seznam_nab_vyd].each { |i| element << MsgObjType.new('NabVyd', i).builder }
          root << element
        end
        if data.key? :seznam_popt_prij
          element = Ox::Element.new('SeznamPoptPrij')
          data[:seznam_popt_prij].each { |i| element << MsgObjType.new('PoptPrij', i).builder }
          root << element
        end
        if data.key? :seznam_popt_vyd
          element = Ox::Element.new('SeznamPoptVyd')
          data[:seznam_popt_vyd].each { |i| element << MsgObjType.new('PoptVyd', i).builder }
          root << element
        end
        if data.key? :seznam_pok_dokl
          element = Ox::Element.new('SeznamPokDokl')
          data[:seznam_pok_dokl].each { |i| element << MsgPokDoklType.new('PokDokl', i).builder }
          root << element
        end
        if data.key? :seznam_ban_dokl
          element = Ox::Element.new('SeznamBanDokl')
          data[:seznam_ban_dokl].each { |i| element << MsgBanDoklType.new('BanDokl', i).builder }
          root << element
        end
        if data.key? :seznam_int_dokl
          element = Ox::Element.new('SeznamIntDokl')
          data[:seznam_int_dokl].each { |i| element << MsgIntDoklType.new('IntDokl', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_prij_dpp
          element = Ox::Element.new('SeznamFaktPrij_DPP')
          data[:seznam_fakt_prij_dpp].each { |i| element << MsgFaktDpptype.new('FaktPrij_DPP', i).builder }
          root << element
        end
        if data.key? :seznam_fakt_vyd_dpp
          element = Ox::Element.new('SeznamFaktVyd_DPP')
          data[:seznam_fakt_vyd_dpp].each { |i| element << MsgFaktDpptype.new('FaktVyd_DPP', i).builder }
          root << element
        end
        if data.key? :seznam_pohledavek
          element = Ox::Element.new('SeznamPohledavek')
          data[:seznam_pohledavek].each { |i| element << MsgPohledavkaType.new('Pohledavka', i).builder }
          root << element
        end
        if data.key? :seznam_zavazku
          element = Ox::Element.new('SeznamZavazku')
          data[:seznam_zavazku].each { |i| element << MsgZavazekType.new('Zavazek', i).builder }
          root << element
        end
        if data.key? :seznam_prijemka
          element = Ox::Element.new('SeznamPrijemka')
          data[:seznam_prijemka].each { |i| element << MsgSklDoklType.new('Prijemka', i).builder }
          root << element
        end
        if data.key? :seznam_vydejka
          element = Ox::Element.new('SeznamVydejka')
          data[:seznam_vydejka].each { |i| element << MsgSklDoklType.new('Vydejka', i).builder }
          root << element
        end
        if data.key? :seznam_dl_prij
          element = Ox::Element.new('SeznamDLPrij')
          data[:seznam_dl_prij].each { |i| element << MsgSklDoklType.new('DlPrij', i).builder }
          root << element
        end
        if data.key? :seznam_dl_vyd
          element = Ox::Element.new('SeznamDLVyd')
          data[:seznam_dl_vyd].each { |i| element << MsgSklDoklType.new('DLVyd', i).builder }
          root << element
        end
        if data.key? :seznam_prodejka
          element = Ox::Element.new('SeznamProdejka')
          data[:seznam_prodejka].each { |i| element << MsgSklDoklType.new('Prodejka', i).builder }
          root << element
        end
        if data.key? :seznam_prevodka
          element = Ox::Element.new('SeznamPrevodka')
          data[:seznam_prevodka].each { |i| element << MsgPrevodkaType.new('Prevodka', i).builder }
          root << element
        end
        if data.key? :seznam_vyrobka
          element = Ox::Element.new('SeznamVyrobka')
          data[:seznam_vyrobka].each { |i| element << MsgSklDoklType.new('Vyrobka', i).builder }
          root << element
        end
        if data.key? :seznam_inv_dokl
          element = Ox::Element.new('SeznamInvDokl')
          data[:seznam_inv_dokl].each { |i| element << MsgInvDoklType.new('InvDokl', i).builder }
          root << element
        end
        if data.key? :seznam_stredisek
          element = Ox::Element.new('SeznamStredisek')
          data[:seznam_stredisek].each { |i| element << MsgStrediskoType.new('Stredisko', i).builder }
          root << element
        end
        if data.key? :seznam_zakazka
          element = Ox::Element.new('SeznamZakazka')
          data[:seznam_zakazka].each { |i| element << MsgZakazkaType.new('Zakazka', i).builder }
          root << element
        end
        if data.key? :seznam_cinnosti
          element = Ox::Element.new('SeznamCinnosti')
          data[:seznam_cinnosti].each { |i| element << MsgCinnostType.new('Cinnost', i).builder }
          root << element
        end
        if data.key? :seznam_clen_dph
          element = Ox::Element.new('SeznamClenDPH')
          data[:seznam_clen_dph].each { |i| element << MsgClenDPHType.new('ClenDPH', i).builder }
          root << element
        end
        if data.key? :seznam_uc_osnov
          element = Ox::Element.new('SeznamUcOsnov')
          data[:seznam_uc_osnov].each { |i| element << MsgUcOsnovType.new('UcOsnova', i).builder }
          root << element
        end
        if data.key? :seznam_uc_pohybu
          element = Ox::Element.new('SeznamUcPohybu')
          data[:seznam_uc_pohybu].each { |i| element << MsgUcPohybType.new('UcPohyb', i).builder }
          root << element
        end
        if data.key? :seznam_predkontaci
          element = Ox::Element.new('SeznamPredkontaci')
          data[:seznam_predkontaci].each { |i| element << MsgPredkontaceType.new('Predkontace', i).builder }
          root << element
        end
        if data.key? :seznam_predkontaci_de
          element = Ox::Element.new('SeznamPredkontaciDE')
          data[:seznam_predkontaci_de].each { |i| element << MsgPredkontaceDEType.new('PredkontaceDE', i).builder }
          root << element
        end
        if data.key? :seznam_zauctovani_dph
          element = Ox::Element.new('SeznamZauctovaniDPH')
          data[:seznam_zauctovani_dph].each { |i| element << MsgZauctovaniDPHType.new('ZauctovaniDPH', i).builder }
          root << element
        end
        if data.key? :seznam_zauctovani_dph_de
          element = Ox::Element.new('SeznamZauctovaniDPH_DE')
          data[:seznam_zauctovani_dph_de].each { |i| element << MsgZauctovaniDPHDetype.new('ZauctovaniDPH_DE', i).builder }
          root << element
        end
        if data.key? :seznam_bank_uctu_pokladen
          element = Ox::Element.new('SeznamBankUctuPokladen')
          data[:seznam_bank_uctu_pokladen].each { |i| element << MsgBankUcetPokladnaType.new('BankUcetPokladna', i).builder }
          root << element
        end
        if data.key? :seznam_mezd
          element = Ox::Element.new('SeznamMezd')
          data[:seznam_mezd].each { |i| element << Mzda.new('Mzda', i).builder }
          root << element
        end

        root
      end
    end
  end
end