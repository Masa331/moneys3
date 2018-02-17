require 'spec_helper'
require 'money_s3'

RSpec.describe MoneyS3 do
  describe '::parse' do

    context 'file with multiple agendas inside' do
      let(:raw) { File.read('./spec/fixtures/various_agendas.xml') }
      let(:parsed) { MoneyS3.parse(raw) }

      it 'is parsed correctly' do
        expect(parsed.seznam_fakt_vyd.last.doklad).to eq '171372'
        expect(parsed.seznam_fakt_vyd_dpp.last.doklad).to eq '118008'
      end
    end

    context 'empty data set' do
      let(:raw) { File.read('./spec/fixtures/empty_data_set.xml') }
      let(:parsed) { MoneyS3.parse(raw) }

      it 'is parsed correctly' do
        expect(parsed.seznam_fakt_vyd).to eq []
        expect(parsed.seznam_fakt_vyd_dpp).to eq []
      end
    end
  end
end
