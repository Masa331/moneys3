require 'spec_helper'

RSpec.describe MoneyS3::HashWithAttributes do
  describe '#==' do
    it 'returns true if both sides value and attributes are same' do
      with_attrs1 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, {})
      with_attrs2 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, {})

      expect(with_attrs1 == with_attrs2).to eq true
    end

    it 'returns false if values are different' do
      with_attrs1 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, {})
      with_attrs2 = MoneyS3::HashWithAttributes.new({ a: 'bye!' }, {})

      expect(with_attrs1 == with_attrs2).to eq false
    end

    it 'returns false if attributes are different' do
      with_attrs1 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, {})
      with_attrs2 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, { version: '1' })

      expect(with_attrs1 == with_attrs2).to eq false
    end

    context "other doesn't respond to #value or #attributes" do
      it "returns true if other is directly comparable with value" do
        with_attrs1 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, {})
        plain_hash = { a: 'hi!' }

        expect(with_attrs1 == plain_hash).to eq true
      end

      it "returns false if other is not directly comparable with value" do
        with_attrs1 = MoneyS3::HashWithAttributes.new({ a: 'hi!' }, {})
        plain_hash = { a: 'bye!' }

        expect(with_attrs1 == plain_hash).to eq false
      end
    end
  end
end
