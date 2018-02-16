require 'spec_helper'
require 'money_s3'

RSpec.describe MoneyS3::FakturaType do
  describe '::parse' do
    let(:raw) { File.read('./spec/fixtures/various_agendas.xml') }
    let(:parsed) { MoneyS3.parse(raw) }

    context 'file with multiple agendas inside' do
      it 'is parsed correctly' do
        expect(parsed.seznam_fakt_vyd.last.doklad).to eq '171372'
        expect(parsed.seznam_fakt_vyd_dpp.last.doklad).to eq '118008'
      end
    end
  end
end
