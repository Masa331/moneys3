require 'spec_helper'
require 'money_s3'

RSpec.describe MoneyS3 do
  describe '::parse' do
    context 'file with multiple agendas inside' do
      let(:raw) { File.read('./spec/fixtures/various_agendas.xml') }
      let(:parsed) { MoneyS3.parse(raw) }

      it 'is parsed correctly' do
        expect(parsed.seznam_fakt_vyd.fakt_vyd.last.doklad).to eq '171372'
        expect(parsed.seznam_fakt_vyd_dpp.last.doklad).to eq '118008'
      end
    end

    context 'empty data set' do
      let(:raw) { File.read('./spec/fixtures/empty_data_set.xml') }
      let(:parsed) { MoneyS3.parse(raw) }

      it 'is parsed correctly' do
        expect(parsed.seznam_fakt_vyd).to eq nil
        expect(parsed.seznam_fakt_vyd_dpp).to eq []
      end
    end
  end

  describe '::build' do
    it 'creates xml with invoices if proper data given ' do
      xml = MoneyS3.build({ seznam_fakt_vyd: { fakt_vyd: [{ doklad: '123' }] } }).strip

      expect(xml).to eq_multiline(%{
        |<?xml version="1.0"?>
        |<MoneyData>
        |  <SeznamFaktVyd>
        |    <FaktVyd>
        |      <Doklad>123</Doklad>
        |    </FaktVyd>
        |  </SeznamFaktVyd>
        |</MoneyData> })
    end

    it 'creates empty xml if no data given' do
      xml = MoneyS3.build({}).strip

      expect(xml).to eq "<?xml version=\"1.0\"?>\n<MoneyData/>"
    end
  end

  it 'output from builder is same as input for parser when used together' do
    raw = File.read('./spec/fixtures/various_agendas.xml')

    parsed = MoneyS3.parse(raw)
    builded = MoneyS3.build(parsed.to_h)

    expect(builded).to eq raw
  end

  it 'output from builder is same as input for parser when used together' do
    raw = File.read('./spec/fixtures/complete_invoice.xml')

    parsed = MoneyS3.parse(raw)
    builded = MoneyS3.build(parsed.to_h)

    expect(normalize_xml(builded)).to eq normalize_xml(raw)
  end
end
