require 'rails_helper'

RSpec.describe Check, type: :model do
  describe 'validate' do
    context 'present' do
      it 'CustomとDairyがあれば、有効であること' do
        expect(build(:valid_check)).to be_valid
      end

      it 'Customがないと、無効であること' do
        expect(build(:valid_check, custom: nil)).to be_valid
      end

      it 'Dairyがないと、無効であること' do
        expect(build(:valid_check, dairy: nil)).to be_valid
      end
    end
  end
end
