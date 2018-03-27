require 'spec_helper'

RSpec.describe MoneyS3::StringWithAttributes do
  describe '#==' do
    it 'returns true if both sides value and attributes are same' do
      with_attrs1 = MoneyS3::StringWithAttributes.new('hi!', {})
      with_attrs2 = MoneyS3::StringWithAttributes.new('hi!', {})

      expect(with_attrs1 == with_attrs2).to eq true
    end

    it 'returns false if values are different' do
      with_attrs1 = MoneyS3::StringWithAttributes.new('hi!', {})
      with_attrs2 = MoneyS3::StringWithAttributes.new('bye!', {})

      expect(with_attrs1 == with_attrs2).to eq false
    end

    it 'returns false if attributes are different' do
      with_attrs1 = MoneyS3::StringWithAttributes.new('hi!', {})
      with_attrs2 = MoneyS3::StringWithAttributes.new('hi!', { version: '1' })

      expect(with_attrs1 == with_attrs2).to eq false
    end

    context "other doesn't respond to #value or #attributes" do
      it "returns true if other is directly comparable with value" do
        with_attrs1 = MoneyS3::StringWithAttributes.new('hi!', {})
        plain_string = 'hi!'

        expect(with_attrs1 == plain_string).to eq true
      end

      it "returns false if other is not directly comparable with value" do
        with_attrs1 = MoneyS3::StringWithAttributes.new('hi!', {})
        plain_string = 'bye!'

        expect(with_attrs1 == plain_string).to eq false
      end
    end
  end
end
