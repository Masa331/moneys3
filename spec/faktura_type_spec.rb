require 'spec_helper'
require 'money_s3'

RSpec.describe MoneyS3::Parsers::FakturaType do
  describe 'complete invoice' do
    let(:raw) { File.read('./spec/fixtures/complete_invoice.xml') }
    let(:parsed) { MoneyS3.parse(raw) }
    subject(:invoice) { parsed.seznam_fakt_vyd.fakt_vyd.first }

    its('zpusob_uctovani') { is_expected.to eq '1' }
    its('vystaveno') { is_expected.to eq '2017-08-03' }
    its('dat_uc_pr') { is_expected.to eq '2017-08-03' }
    its('plneno_dph') { is_expected.to eq '2017-08-03' }
    its('splatno') { is_expected.to eq '2017-08-17' }
    its('uhrazeno') { is_expected.to eq '2017-08-11' }
    # its('doruceno') { is_expected.to eq '' }
    its('dat_sk_poh') { is_expected.to eq '2017-08-03' }
    its('zjedn_d') { is_expected.to eq '0' }
    its('dobropis') { is_expected.to eq '0' }
    its('vyuctovano') { is_expected.to eq '0' }
    # its('prik_uhrady') { is_expected.to eq '' }
    # its('poznamka') { is_expected.to eq '' }
    # its('date_upom1') { is_expected.to eq '' }
    # its('date_upom2') { is_expected.to eq '' }
    # its('date_upom_l') { is_expected.to eq '' }
    # its('datum_its') { is_expected.to eq '' }
    # its('vyridit_nej') { is_expected.to eq '' }
    its('vyridit_do') { is_expected.to eq '2018-01-14' }
    its('vyrizeno') { is_expected.to eq '2018-01-07' }
    its('doklad') { is_expected.to eq '171372' }
    # its('ev_cis_dokl') { is_expected.to eq '' }
    its('guid') { is_expected.to eq '{EAEAFE6E-8DF3-4E81-83B9-688C9519A55E}' }
    its('rada') { is_expected.to eq 'rr1' }
    its('cis_rada') { is_expected.to eq '372' }
    its('u_doklad') { is_expected.to eq 'BP17374' }
    # its('konst_sym') { is_expected.to eq '' }
    # its('ucel_zd_pl') { is_expected.to eq '' }
    its('plnen_dph') { is_expected.to eq nil }
    its('var_symbol') { is_expected.to eq '20171005' }
    its('spec_symbol') { is_expected.to eq '123456' }
    # its('prijat_dokl') { is_expected.to eq '' }
    its('par_symbol') { is_expected.to eq 'parov798' }
    # its('puv_doklad') { is_expected.to eq '' }
    its('c_objednavk') { is_expected.to eq '20171005' }
    its('druh') { is_expected.to eq 'N' }
    its('dobr_duzp') { is_expected.to eq '2018-01-07' }
    its('zp_dopravy') { is_expected.to eq 'přepravní služba' }
    its('uhrada') { is_expected.to eq 'dobírkou' }
    # its('stat_moss') { is_expected.to eq '' }
    # its('zp_vyp_dph') { is_expected.to eq '' }
    its('vystavil') { is_expected.to eq 'J. Novak' }
    its('text_pred_fa') { is_expected.to eq 'Fakturujeme Vám:' }
    its('text_za_fa') { is_expected.to eq 'text za fa' }
    # its('text_pred_dl') { is_expected.to eq '' }
    # its('text_za_dl') { is_expected.to eq '' }
    # its('typ_transakce') { is_expected.to eq '' }
    # its('dodaci_podm') { is_expected.to eq '' }
    # its('druh_dopravy') { is_expected.to eq '' }
    # its('st_odesl_urc') { is_expected.to eq '' }
    # its('i_doklad_id') { is_expected.to eq '' }
    # its('i_dokl_agend') { is_expected.to eq '' }
    its('popis') { is_expected.to eq 'Objednávka č. 1005 z mujshop.cz' }
    its('kod_dph') { is_expected.to eq '19Ř01,02' }
    # its('zakazka') { is_expected.to eq '' }
    its('ucet') { is_expected.to eq 'BAN' }
    its('pred_kontac') { is_expected.to eq 'FV001' }
    its('cinnost') { is_expected.to eq 'MALOOBCHOD' }
    its('proplatit') { is_expected.to eq '0' }
    its('sazba_dph1') { is_expected.to eq '15' }
    its('sazba_dph2') { is_expected.to eq '21' }
    its('celkem') { is_expected.to eq '365' }
    its('typ') { is_expected.to eq 'PRODEJ FA5' }
    its('pri_uhr_zbyv') { is_expected.to eq '0' }
    # its('stredisko') { is_expected.to eq '' }
    its('valuty_prop') { is_expected.to eq '0' }
    its('sum_zaloha') { is_expected.to eq '0' }
    its('sum_zaloha_c') { is_expected.to eq '0' }
    its('doprav_tuz') { is_expected.to eq '0' }
    its('doprav_zahr') { is_expected.to eq '0' }
    its('sleva') { is_expected.to eq '0' }
    # its('pojisteno') { is_expected.to eq '' }

    describe 'valuty' do
      subject(:valuty) { parsed.seznam_fakt_vyd.fakt_vyd.first.valuty }

      its('mena.kod') { is_expected.to eq 'EUR' }
      its('mena.mnozstvi') { is_expected.to eq '1' }
      its('mena.kurs') { is_expected.to eq '26.13' }

      its('souhrn_dph.zaklad0') { is_expected.to eq '569.51' }
      its('souhrn_dph.zaklad5') { is_expected.to eq '0' }
      its('souhrn_dph.zaklad22') { is_expected.to eq '0' }
      its('souhrn_dph.dph5') { is_expected.to eq '0' }
      its('souhrn_dph.dph22') { is_expected.to eq '0' }

      its('souhrn_dph.seznam_dalsi_sazby.first.popis') { is_expected.to eq 'druhá snížená' }
      its('souhrn_dph.seznam_dalsi_sazby.first.hladina_dph') { is_expected.to eq '1' }
      its('souhrn_dph.seznam_dalsi_sazby.first.sazba') { is_expected.to eq '10' }
      its('souhrn_dph.seznam_dalsi_sazby.first.zaklad') { is_expected.to eq '0' }
      its('souhrn_dph.seznam_dalsi_sazby.first.dph') { is_expected.to eq '0' }

      its('celkem') { is_expected.to eq '569.51' }
    end

    its('dod_odb.obch_nazev') { is_expected.to eq 'Petra Lolová' }
    its('dod_odb.obch_adresa.ulice') { is_expected.to eq 'Školní 659/28' }
    its('dod_odb.obch_adresa.misto') { is_expected.to eq 'Praha 14' }
    its('dod_odb.obch_adresa.psc') { is_expected.to eq '46014' }
    its('dod_odb.obch_adresa.stat') { is_expected.to eq 'Česká republika' }

    its('dod_odb.fakt_nazev') { is_expected.to eq 'Jan Maly' }
    its('dod_odb.fakt_adresa.ulice') { is_expected.to eq 'Na hrachu 659/28' }
    its('dod_odb.fakt_adresa.misto') { is_expected.to eq 'Praha 14' }
    its('dod_odb.fakt_adresa.psc') { is_expected.to eq '46014' }
    its('dod_odb.fakt_adresa.stat') { is_expected.to eq 'Česká republika' }
    its('dod_odb.e_mail') { is_expected.to eq 'novak@nekde.cz' }

    its('konec_prij.nazev') { is_expected.to eq 'Petra Lolova' }
    its('konec_prij.adresa.ulice') { is_expected.to eq 'Na Machovne 659/28' }
    its('konec_prij.adresa.misto') { is_expected.to eq 'Brno 14' }
    its('konec_prij.adresa.psc') { is_expected.to eq '46014' }
    its('konec_prij.adresa.stat') { is_expected.to eq 'Česká republika' }
    its('konec_prij.e_mail') { is_expected.to eq 'nekdo@nekde.cz' }

    its('souhrn_dph.zaklad0') { is_expected.to eq '0' }
    its('souhrn_dph.zaklad5') { is_expected.to eq '0' }
    its('souhrn_dph.zaklad22') { is_expected.to eq '301.65' }
    its('souhrn_dph.dph5') { is_expected.to eq '0' }
    its('souhrn_dph.dph22') { is_expected.to eq '63.35' }

    describe 'dalsi sazba' do
      subject(:sazba) { parsed.seznam_fakt_vyd.fakt_vyd.first.souhrn_dph.seznam_dalsi_sazby.first }

      its('popis') { is_expected.to eq 'druhá snížená' }
      its('hladina_dph') { is_expected.to eq '1' }
      its('sazba') { is_expected.to eq '10' }
      its('zaklad') { is_expected.to eq '0' }
      its('dph') { is_expected.to eq '0' }
    end

    describe 'polozka' do
      subject(:polozka) { parsed.seznam_fakt_vyd.fakt_vyd.first.seznam_polozek.first }

      its('popis') { is_expected.to eq 'Kartáček texturovací střední' }
      its('pocet_mj') { is_expected.to eq '1' }
      its('sazba_dph') { is_expected.to eq '21' }
      its('cena') { is_expected.to eq '47.94' }
      its('cena_typ') { is_expected.to eq '0' }
      its('sleva') { is_expected.to eq '0' }
      its('poradi') { is_expected.to eq '1' }
      its('valuty') { is_expected.to eq '0' }
      its('cena_po_sleve') { is_expected.to eq '1' }

      its('skl_polozka.cenova_hlad') { is_expected.to eq 'Základní' }
      its('skl_polozka.vratka') { is_expected.to eq '0' }
      its('skl_polozka.ucet_md') { is_expected.to eq '000000' }
      its('skl_polozka.ucet_d') { is_expected.to eq '132000' }
      its('skl_polozka.hmotnost') { is_expected.to eq '0.01' }
      its('skl_polozka.sklad.nazev') { is_expected.to eq 'PRODEJNA' }
      its('skl_polozka.sklad.kod_skladu') { is_expected.to eq 'UL' }
      its('skl_polozka.sklad.guid') { is_expected.to eq '{0B1WR-B080-4836-á029-AA12AA719DF2}' }
      its('skl_polozka.sklad.cenik_sklad') { is_expected.to eq '0' }
      its('skl_polozka.km_karta.popis') { is_expected.to eq 'Kartáček texturovací střední' }
      its('skl_polozka.km_karta.zkrat') { is_expected.to eq 'Kartáček střední' }
      its('skl_polozka.km_karta.mj') { is_expected.to eq 'ks' }
      its('skl_polozka.km_karta.uziv_code') { is_expected.to eq '110296' }
      its('skl_polozka.km_karta.guid') { is_expected.to eq '{D6C17C34-3F95-41á7-99A4-áE3B972F7902}' }
      its('skl_polozka.km_karta.typ_zar_doby') { is_expected.to eq 'N' }
      its('skl_polozka.km_karta.zar_doba') { is_expected.to eq '0' }
      its('skl_polozka.km_karta.ev_vyr_cis') { is_expected.to eq '0' }
      its('skl_polozka.km_karta.des_mist') { is_expected.to eq '0' }
      its('skl_polozka.km_karta.obrazek2') { is_expected.to eq 'cesta_k_foto' }
      its('skl_polozka.km_karta.hmotnost') { is_expected.to eq '0.01' }
      its('skl_polozka.km_karta.objem') { is_expected.to eq '0' }
      its('skl_polozka.km_karta.typ_karty') { is_expected.to eq 'jednoducha' }
    end

    describe 'uhrada' do
      subject(:uhrada) { parsed.seznam_fakt_vyd.fakt_vyd.first.seznam_uhrad.first }

      its('prijem') { is_expected.to eq '1' }
      its('poradi') { is_expected.to eq '378' }
      its('datum') { is_expected.to eq '2017-08-11' }
      its('dat_upl_dph') { is_expected.to eq '2017-08-11' }
      its('castka') { is_expected.to eq '365' }
      its('zpusob_uhr') { is_expected.to eq '3' }

      its('doklad_uhr.id_dokladu') { is_expected.to eq '376' }
      its('doklad_uhr.cislo_dokladu') { is_expected.to eq 'BP17374' }
      its('doklad_uhr.druh_dokladu') { is_expected.to eq 'B' }
      its('doklad_uhr.rok') { is_expected.to eq '2017' }

      its('doklad_hraz.id_dokladu') { is_expected.to eq '397' }
      its('doklad_hraz.cislo_dokladu') { is_expected.to eq '171372' }
      its('doklad_hraz.druh_dokladu') { is_expected.to eq 'FV' }
      its('doklad_hraz.rok') { is_expected.to eq '2017' }

      describe 'uhrada' do
        subject(:pd_uhrada) { parsed.seznam_fakt_vyd.fakt_vyd.first.seznam_uhrad.first.seznam_pd_uhrad.first }

        its('poradi') { is_expected.to eq '378' }
        its('kontace') { is_expected.to eq 'FV001' }
        its('cinnost') { is_expected.to eq 'MALOOBCHOD' }
        its('zaklad') { is_expected.to eq '301.65' }
        its('dphzs') { is_expected.to eq '63.35' }
        its('dphss') { is_expected.to eq '0' }
        its('wl_zaklady') { is_expected.to eq '0' }
        its('wldph1') { is_expected.to eq '0' }
        its('wldph2') { is_expected.to eq '0' }
      end
    end

    describe 'seznam_zal_polozek' do
      subject(:polozka) { parsed.seznam_fakt_vyd.fakt_vyd.first.seznam_zal_polozek.first }

      its('popis') { is_expected.to eq 'Konzultace' }
      its('pocet_mj') { is_expected.to eq '1' }
      its('zbyva_mj') { is_expected.to eq '0' }
      its('cena') { is_expected.to eq '5000' }
      its('sazba_dph') { is_expected.to eq '0' }
      its('typ_ceny') { is_expected.to eq '0' }
      its('sleva') { is_expected.to eq '0' }
      its('vystaveno') { is_expected.to eq '2018-01-07' }
      its('vyridit_do') { is_expected.to eq '2018-01-14' }
      its('vyrizeno') { is_expected.to eq '2018-01-07' }
      its('poradi') { is_expected.to eq '1' }
      its('valuty') { is_expected.to eq '0' }
      its('hmotnost') { is_expected.to eq '0' }
      its('cena_po_sleve') { is_expected.to eq '1' }
      its('pred_pc') { is_expected.to eq '0' }

      its('neskl_polozka.typ_zar_doby') { is_expected.to eq 'N' }
      its('neskl_polozka.zar_doba') { is_expected.to eq '6' }
    end

    its('moje_firma.nazev') { is_expected.to eq 'XML FAKTURY s.r.o.' }
    its('moje_firma.adresa.ulice') { is_expected.to eq 'Novakova 574/4' }
    its('moje_firma.adresa.misto') { is_expected.to eq 'Ústí nad Orlici' }
    its('moje_firma.adresa.psc') { is_expected.to eq '40003' }
    its('moje_firma.adresa.stat') { is_expected.to eq 'Česká republika' }
    its('moje_firma.adresa.kod_statu') { is_expected.to eq 'CZ' }

    its('moje_firma.obch_nazev') { is_expected.to eq 'XML FAKTURY s.r.o.' }
    its('moje_firma.obch_adresa.ulice') { is_expected.to eq 'Novakovka 574/4' }
    its('moje_firma.obch_adresa.misto') { is_expected.to eq 'Ústí nad Orlici' }
    its('moje_firma.obch_adresa.psc') { is_expected.to eq '40003' }
    its('moje_firma.obch_adresa.stat') { is_expected.to eq 'Česká republika' }
    its('moje_firma.obch_adresa.kod_statu') { is_expected.to eq 'CZ' }

    its('moje_firma.fakt_nazev') { is_expected.to eq 'XML FAKTURY s.r.o.' }
    its('moje_firma.fakt_adresa.ulice') { is_expected.to eq 'Raisova 574/4' }
    its('moje_firma.fakt_adresa.misto') { is_expected.to eq 'Ústí nad Orlici' }
    its('moje_firma.fakt_adresa.psc') { is_expected.to eq '40003' }
    its('moje_firma.fakt_adresa.stat') { is_expected.to eq 'Česká republika' }
    its('moje_firma.fakt_adresa.kod_statu') { is_expected.to eq 'CZ' }

    its('moje_firma.tel.pred') { is_expected.to eq '+420' }
    its('moje_firma.tel.cislo') { is_expected.to eq '111222333' }
    its('moje_firma.tel.klap') { is_expected.to eq nil }

    its('moje_firma.fax.pred') { is_expected.to eq '+420' }
    its('moje_firma.fax.cislo') { is_expected.to eq '111222444' }
    its('moje_firma.fax.klap') { is_expected.to eq nil }

    its('moje_firma.mobil.pred') { is_expected.to eq nil }
    its('moje_firma.mobil.cislo') { is_expected.to eq nil }

    its('moje_firma.e_mail') { is_expected.to eq 'info@mujshop.cz' }
    its('moje_firma.www') { is_expected.to eq 'www.mujshop.cz' }
    its('moje_firma.ico') { is_expected.to eq '00000001' }
    its('moje_firma.dic') { is_expected.to eq 'CZ00000001' }
    its('moje_firma.banka') { is_expected.to eq 'Československá obchodní banka, a.s.' }
    its('moje_firma.ucet') { is_expected.to eq '205 096 789' }
    its('moje_firma.kod_banky') { is_expected.to eq '0300' }
    its('moje_firma.kod_partn') { is_expected.to eq nil }
    its('moje_firma.fyz_osoba') { is_expected.to eq '0' }
    its('moje_firma.mena_symb') { is_expected.to eq 'Kč' }
    its('moje_firma.mena_kod') { is_expected.to eq 'CZK' }

    describe 'seznam vazeb' do
      subject(:vazba) { parsed.seznam_fakt_vyd.fakt_vyd.first.seznam_vazeb.first }

      its('typ') { is_expected.to eq 'PR' }
      its('doklad.druh') { is_expected.to eq 'OP' }
      its('doklad.cislo') { is_expected.to eq 'OP17426' }
      its('doklad.prijat_dokl') { is_expected.to eq '20171005' }
      its('doklad.var_symbol') { is_expected.to eq '20171005' }
      its('doklad.vystaveno') { is_expected.to eq '2017-08-01' }
    end

    # its('seznam_nep_plateb') { is_expected.to eq '' }
    # its('vlajky') { is_expected.to eq '' }
    # its('dokumenty') { is_expected.to eq '' }
    # its('prepr_seznam_sluzeb') { is_expected.to eq '' }
    # its('eshop') { is_expected.to eq '' }
    # its('typ_zasillky') { is_expected.to eq '' }
    # its('import') { is_expected.to eq '' }
    # its('prepr_vyplatne') { is_expected.to eq '' }
    # its('prepr_uhrada_dobirky') { is_expected.to eq '' }
    # its('prepr_trida') { is_expected.to eq '' }
    # its('prepravce') { is_expected.to eq '' }
  end

  describe 'invoice with multiple items' do
    let(:raw) { File.read('./spec/fixtures/multiple_items_invoice.xml') }
    let(:parsed) { MoneyS3.parse(raw) }
    subject(:invoice) { parsed.seznam_fakt_vyd.fakt_vyd.first }

    it 'is parsed right' do
      expect(subject.seznam_polozek.first.popis).to eq 'popis_1'
      expect(subject.seznam_polozek.last.popis).to eq 'popis_2'
    end
  end

  describe 'invoice with no items' do
    let(:raw) { File.read('./spec/fixtures/no_items_invoice.xml') }
    let(:parsed) { MoneyS3.parse(raw) }
    subject(:invoice) { parsed.seznam_fakt_vyd.fakt_vyd.first }

    it 'is parsed right' do
      expect(subject.seznam_polozek).to eq []
    end
  end
end
