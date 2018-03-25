require 'spec_helper'

RSpec.describe MoneyS3::WithAttributes do
  describe '#==' do
    it 'is same as wrapped class without attributes' do
      with_attributes = MoneyS3::WithAttributes.new('hi!')

      expect(with_attributes).to eq 'hi!'
    end

    it 'is same when used in hash' do
      with_attributes = MoneyS3::WithAttributes.new nil

      expect(with_attributes).to eq nil
    end
  end
end
